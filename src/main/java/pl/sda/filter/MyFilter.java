package pl.sda.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;
import java.io.PrintWriter;

//@WebFilter(filterName = "MyFilter" ,servletNames = "HelloWordlServlet")
public class MyFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        PrintWriter writer = servletResponse.getWriter();
        writer.write("<html><body><div>");
        String login = servletRequest.getParameter("login");
        if (login != null && login.equals("admin")) {
            filterChain.doFilter(servletRequest, servletResponse);
        } else {
            writer.write("<p style='color: red; front-size: larger'> User id is invalid. Please try again...</p>");
        }
        writer.write("</div></body></html>");
        writer.close();
    }

    @Override
    public void destroy() {

    }
}
