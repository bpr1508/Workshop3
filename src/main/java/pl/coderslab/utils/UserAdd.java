package pl.coderslab.utils;

import pl.coderslab.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/add")
public class UserAdd extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User user = new User(0, email, username, password);
        UserDao userDao = new UserDao();
        userDao.create(user);
        response.sendRedirect("/user/list");
    }
}
