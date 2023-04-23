public class Student {
    // 成员变量
    private String name;
    // int age;
    private int age;  
    
    // 提供get/set方法
    public void setName(String name){
        // 这里，this关键字后面跟的是成员变量，前者等于后面的形参。如果不用this，name = name是会报错的系统无法识别（即此时形参隐藏了成员变量
        this.name = name;
    }
    public String getName(){
        return name;
    }

    public void setAge(int age){
        if (age < 0 || age > 120){
            System.out.println("wrong age");
        }else{
            this.age = age;
        }
    }

    public int getAge(){
        return age;
    }
    
    // 成员方法
    public void show(){
        System.out.println(name + "," + age);
    }
}
