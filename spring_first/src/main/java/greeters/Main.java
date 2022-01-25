package greeters;
 
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
 
public class Main {
    public static void main(String[] args) {
        // ���� ������ �̿��� bean ��ü ����
        AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(AppContext.class);
        // bean ��ü�� ����
        Greeter g = ctx.getBean("greeter", Greeter.class);
        String msg = g.greet("������");
        System.out.println(msg);
        ctx.close();
    }
}