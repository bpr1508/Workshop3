package pl.coderslab.utils;

import pl.coderslab.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/edit")
public class UserEdit extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User(0, "", "", "");
        user.setId(Integer.parseInt(request.getParameter("id")));

        user.setEmail(request.getParameter("userEmail"));
        user.setUsername(request.getParameter("userName"));
        user.setPassword(request.getParameter("userPassword"));
        UserDao userDao = new UserDao();
        userDao.update(user);
        response.sendRedirect("/user/list");
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        UserDao userDao = new UserDao();
        User read = userDao.read(Integer.parseInt(id));
        request.setAttribute("id", read);
        getServletContext().getRequestDispatcher("/users/edit.jsp")
                .forward(request, response);
    }
}
