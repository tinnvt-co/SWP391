package filter;



import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.Set;
import org.apache.catalina.User;



@WebFilter(filterName = "AuthFilter", urlPatterns = "/*")
public class AuthFilter implements Filter {

    private static final Set<String> PUBLIC_URLS = Set.of(
            "/login",
            "/forgot-password",
            "/users"   // TODO: remove after login is implemented
    );

 
    private static final Set<String> PUBLIC_PREFIXES = Set.of(
            "/assets/"
    );

    @Override
    public void doFilter(ServletRequest req, ServletResponse res,
                         FilterChain chain) throws IOException, ServletException {

        HttpServletRequest  request  = (HttpServletRequest)  req;
        HttpServletResponse response = (HttpServletResponse) res;

        String contextPath = request.getContextPath();
        String requestURI  = request.getRequestURI();
        String path        = requestURI.substring(contextPath.length());

        // Allow public URLs and static assets
        if (isPublic(path)) {
            chain.doFilter(request, response);
            return;
        }

        // Check session
        HttpSession session   = request.getSession(false);
        User        loginUser = (session != null)
                ? (User) session.getAttribute("loginUser")
                : null;

        if (loginUser == null) {
            response.sendRedirect(contextPath + "/login");
            return;
        }

        chain.doFilter(request, response);
    }

    private boolean isPublic(String path) {
        if (PUBLIC_URLS.contains(path)) return true;
        for (String prefix : PUBLIC_PREFIXES) {
            if (path.startsWith(prefix)) return true;
        }
        return false;
    }
}

