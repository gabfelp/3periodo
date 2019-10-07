package koch;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.image.BufferStrategy;
import java.util.ArrayList;
import javax.swing.JFrame;

public class MainR extends JFrame implements KeyListener {
    
    private final int limite = 7;
    private int cont;
    
    private BufferStrategy bufferStrategy;
    private ArrayList<Retangulo> reantgulos = new ArrayList<>();
    
    public static void main(String[] args){
        
        MainR main = new MainR();
        main.setVisible(true);
        
    }
    
    public MainR(){
        
        setExtendedState(JFrame.MAXIMIZED_BOTH);
        setLocationRelativeTo(null);
        setUndecorated(true);
        setIgnoreRepaint(true);
        setVisible(true);
        addKeyListener(this);
        createBufferStrategy(2);
        bufferStrategy = getBufferStrategy();
        
        Retangulo r = new Retangulo();
        
        r.x = 30;
        r.y = 30;
        r.width = getWidth() - 60;
        r.height = getHeight() - 60;
        
        reantgulos.add(r);
        
        cont = 0;
        
        try {
            desenha();
        } catch (InterruptedException ex) {
            ex.printStackTrace();
        }
    }
    
    public void desenha() throws InterruptedException{
        
        Graphics2D g2d = (Graphics2D) bufferStrategy.getDrawGraphics();

        g2d.setColor(Color.black);
        g2d.fillRect(0, 0, getWidth(), getHeight());

        g2d.setColor(Color.WHITE);
        g2d.setFont(new Font("", Font.BOLD, 20));
        g2d.drawString("Retângulo de koch", 20, 20);
        
        ArrayList<Retangulo> reantgulosN = new ArrayList<>();
        
        g2d.setColor(Color.red);
        
        for(Retangulo r : reantgulos){
            g2d.drawRect(r.x, r.y, + r.width, + r.height);
            
            //System.out.println(r.x + "\t" + r.y + "\t" + r.x + r.width + "\t" + r.y + r.height);
            
            if(r.div == true){
                r.div = false;
                
                Retangulo r1 = new Retangulo();
                
                r1.x = r.x;
                r1.y = r.y;
                r1.width = Math.round( r.width * 3.2f / 7.0f );
                r1.height = Math.round( r.height * 3.0f / 7.0f );
                
                Retangulo r2 = new Retangulo();
                
                r2.width = Math.round( r.width * 3.2f / 7.0f );
                r2.height = Math.round( r.height * 3.0f / 7.0f );
                r2.x = r.x + r.width - r2.width;
                r2.y = r.y;
                
                Retangulo r3 = new Retangulo();
                
                r3.width = Math.round( r.width * 3.2f / 7.0f );
                r3.height = Math.round( r.height * 3.0f / 7.0f );
                r3.x = r.x;
                r3.y = r.y + r.height - r3.height;
                
                Retangulo r4 = new Retangulo();
                
                r4.width = Math.round( r.width * 3.2f / 7.0f );
                r4.height = Math.round( r.height * 3.0f / 7.0f );
                r4.x = r.x + r.width - r4.width;
                r4.y = r.y + r.height - r4.height;
                
                reantgulosN.add(r1);
                reantgulosN.add(r2);
                reantgulosN.add(r3);
                reantgulosN.add(r4);
            }
        }
        
        //reantgulos.clear();

        for(Retangulo l : reantgulosN){
            reantgulos.add(l);
        }

        reantgulosN.clear();

        bufferStrategy.show();
        
        Thread.sleep(3000);
        
        cont++;
        
        if(cont < limite)
            desenha();
    }
    
    @Override
    public void keyTyped(KeyEvent ke) {
        if(ke.getKeyCode() == KeyEvent.VK_ESCAPE){
            System.exit(0);
        }
    }

    @Override
    public void keyPressed(KeyEvent ke) {
        if(ke.getKeyCode() == KeyEvent.VK_ESCAPE){
            System.exit(0);
        }
    }

    @Override
    public void keyReleased(KeyEvent ke) {
        if(ke.getKeyCode() == KeyEvent.VK_ESCAPE){
            System.exit(0);
        }
    }
    
}

class Retangulo extends Rectangle {
    
    public boolean div = true;
    
}