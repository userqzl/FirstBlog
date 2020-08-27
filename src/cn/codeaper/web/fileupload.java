package cn.codeaper.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.InputStream;

/**
 * @description:
 * @author: qzl
 * @created: 2020/08/18 18:05
 */
@WebServlet("/fileupload")
public class fileupload extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        InputStream in = req.getInputStream();
        int len = 0;
        byte[] buf = new byte[1024*8];
        while ((len = in.read(buf)) != -1){
            System.out.println(buf);
        }
    }
}
