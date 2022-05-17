package codegym.repository;

import codegym.entity.Student;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
@Repository
public class StudentRepositoryImpl implements StudentRepository{
    private static Map<String,Student> studentMap = new HashMap<>();
    static {
        studentMap.put("SV-0001",new Student("SV-0001","Kien1"));
        studentMap.put("SV-0002",new Student("SV-0002","Kien2"));
        studentMap.put("SV-0003",new Student("SV-0003","Kien3"));
        studentMap.put("SV-0004",new Student("SV-0004","Kien4"));
        studentMap.put("SV-0005",new Student("SV-0005","Kien5"));
    }
    @Override
    public void create(Student student) {
        if(!studentMap.containsKey(student.getId())){
            studentMap.put(student.getId(),student);
        }

    }

    @Override
    public void update(Student student) {
        if(studentMap.containsKey(student.getId())){
            studentMap.put(student.getId(),student);
        }
    }

    @Override
    public void delete(String id) {
        if(studentMap.containsKey(id)){
            studentMap.remove(id);
        }
    }

    @Override
    public List<Student> findAll() {
        return new ArrayList<>(studentMap.values());
    }

    @Override
    public Student findById(String id) {
        return studentMap.get(id);
    }
}
