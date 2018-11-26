package br.com.dac;

import javax.servlet.http.HttpServletRequest;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class Helper {
    public static Integer requestParameterInt(HttpServletRequest req, String name) {
        try {
            return Integer.parseInt(req.getParameter(name));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public static Float requestParameterFloat(HttpServletRequest req, String name) {
        try {
            return Float.parseFloat(req.getParameter(name));
        } catch (NumberFormatException e) {
            return null;
        }
    }

    public static Date requestParameterDate(HttpServletRequest req, String name) {
        try {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            return formatter.parse(req.getParameter(name));
        } catch (ParseException e) {
            return null;
        }
    }

}
