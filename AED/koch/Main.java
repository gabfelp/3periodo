package koch;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.image.BufferStrategy;
import java.util.ArrayList;
import javax.swing.JFrame;

public class Main extends JFrame implements KeyListener {
    
    private final int limite = 8;
    private int cont;
    
    private BufferStrategy bufferStrategy;
    private ArrayList<Linha> linhas = new ArrayList<>();
    
    public static void main(String[] args){
        
        Main main = new Main();
        main.setVisible(true);
        
    }
    
    public Main(){
        
        setExtendedState(JFrame.MAXIMIZED_BOTH);
        setLocationRelativeTo(null);
        setUndecorated(true);
        setIgnoreRepaint(true);
        setVisible(true);
        addKeyListener(this);
        createBufferStrategy(2);
        bufferStrategy = getBufferStrategy();
        
        Linha l1 = new Linha();
        
        l1.px1 = 0;
        l1.py1 = getHeight() - 50;
        l1.px2 = getWidth();
        l1.py2 = getHeight() - 50;
        
        linhas.add(l1);
        
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
        g2d.drawString("Curva de koch", 20, 20);
        
        ArrayList<Linha> linhasN = new ArrayList<>();
        
        g2d.setColor(Color.red);
        
        for(Linha l : linhas){
            g2d.drawLine(l.px1, l.py1, l.px2, l.py2);
            
            //System.out.println(l.px1 + "\t" + l.py1 + "\t" + l.px2 + "\t" + l.py2);
            
            int xi, yi, xf, yf, xg = 0, yg = 0;
            
            xi = l.px1;
            yi = l.py1;
            xf = l.px2;
            yf = l.py2;
            
            Linha l1 = new Linha();
            Linha l2 = new Linha();
            Linha l3 = new Linha();
            Linha l4 = new Linha();
            
            if(xi < xf){

                xi += Math.round( (l.px2 - l.px1) / 3 );
                xf -= Math.round( (l.px2 - l.px1) / 3 );
                
                if(yi < yf){

                    yi += Math.round( (l.py2 - l.py1) / 3 );
                    yf -= Math.round( (l.py2 - l.py1) / 3 );
                    
                    xg = xf;
                    xg += (xf - xi);
                    yg = yi;

                }else if(yi > yf){

                    yi -= Math.round( (l.py1 - l.py2) / 3 );
                    yf += Math.round( (l.py1 - l.py2) / 3 );
                    
                    xg = xi;
                    xg -= xf - xi;
                    yg = yf;

                }else{

                    xg = xi;
                    xg += Math.round( (xf - xi) / 2 );
                    yg = (int) (yi - Math.round( (xf - xi) * Math.sqrt(3) / 2));

                }

            }else if(xi > xf){

                xi -= Math.round( (l.px1 - l.px2) / 3 );
                xf += Math.round( (l.px1 - l.px2) / 3 );
                
                if(yi < yf){

                    yi += Math.round( (l.py2 - l.py1) / 3 );
                    yf -= Math.round( (l.py2 - l.py1) / 3 );
                    
                    xg = xi;
                    xg += xi - xf;
                    yg = yf;

                }else if(yi > yf){

                    yi -= Math.round( (l.py1 - l.py2) / 3 );
                    yf += Math.round( (l.py1 - l.py2) / 3 );
                    
                    xg = xf;
                    xg -= xi - xf;
                    yg = yi;

                }else{

                    xg = xf;
                    xg += Math.round( (xi - xf) / 2 );
                    yg = (int) (yi + Math.round( (xi - xf) * Math.sqrt(3) / 2));

                }

            }else{

                if(yi < yf){

                    yi += Math.round( (l.py2 - l.py1) / 3 );
                    yf -= Math.round( (l.py2 - l.py1) / 3 );
                    
                    yg = yi;
                    yg += Math.round( (yf - yi) / 2 );
                    xg = (int) (xi + Math.round( (yf - yi) * Math.sqrt(3) / 2));

                }else if(yi > yf){

                    yi -= Math.round( (l.py1 - l.py2) / 3 );
                    yf += Math.round( (l.py1 - l.py2) / 3 );
                    
                    yg = yf;
                    yg += Math.round( (yi - yf) / 2 );
                    xg = (int) (xi - Math.round( (yf - yi) * Math.sqrt(3) / 2));

                }else{
                    //
                }

            }
            
            l1.px1 = l.px1;
            l1.py1 = l.py1;
            l1.px2 = xi;
            l1.py2 = yi;
            
            l2.px1 = xi;
            l2.py1 = yi;
            l2.px2 = xg;
            l2.py2 = yg;
            
            l3.px1 = xg;
            l3.py1 = yg;
            l3.px2 = xf;
            l3.py2 = yf;
            
            l4.px1 = xf;
            l4.py1 = yf;
            l4.px2 = l.px2;
            l4.py2 = l.py2;
            
            linhasN.add(l1);
            linhasN.add(l2);
            linhasN.add(l3);
            linhasN.add(l4);
        }
        
        linhas.clear();

        for(Linha l : linhasN){
            linhas.add(l);
        }

        linhasN.clear();

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

class Linha {
    
    public int px1;
    public int py1;
    public int px2;
    public int py2;
    
}