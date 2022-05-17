package codegym.formatter;

import codegym.entity.Student;
import codegym.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.Formatter;
import org.springframework.stereotype.Component;

import java.text.ParseException;
import java.util.Locale;
@Component
public class StudentFormatter implements Formatter<Student> {
    @Autowired
    private StudentService studentService;
    @Override
    public Student parse(String text, Locale locale) throws ParseException {
        return studentService.findById(text);
    }

    @Override
    public String print(Student object, Locale locale) {
        return object.toString();
    }
}
