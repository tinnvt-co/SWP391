package filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import java.io.IOException;

@WebFilter(filterName = "EncodingFilter", urlPatterns = "/*")
public class EncodingFilter implements Filter {

    private String encoding = "UTF-8";

    @Override
    public void init(FilterConfig config) throws ServletException {
        String enc = config.getInitParameter("encoding");
        if (enc != null && !enc.isBlank()) {
            encoding = enc;
        }
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
                         FilterChain chain) throws IOException, ServletException {
        if (request.getCharacterEncoding() == null) {
            request.setCharacterEncoding(encoding);
        }
        response.setCharacterEncoding(encoding);
        chain.doFilter(request, response);
    }
}

