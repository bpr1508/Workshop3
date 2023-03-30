package pl.coderslab.utils;

import pl.coderslab.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/list")
public class UserList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserDao userDao = new UserDao();
        User[] user = userDao.findAll();
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/users/list.jsp")
                .forward(request, response);

    }
}
