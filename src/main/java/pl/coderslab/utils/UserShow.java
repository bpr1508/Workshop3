package pl.coderslab.utils;

import pl.coderslab.entity.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/user/show")
public class UserShow extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        UserDao userDao = new UserDao();
        User user = userDao.read(id);
        request.setAttribute("user", user);
        getServletContext().getRequestDispatcher("/users/show.jsp")
                .forward(request, response);
    }
}
