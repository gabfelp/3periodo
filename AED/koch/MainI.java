package koch;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;
import java.awt.image.BufferStrategy;
import java.util.ArrayList;
import javax.swing.JFrame;

public class MainI extends JFrame implements KeyListener {
    
    private final int limite = 6;
    private int cont;
    
    private BufferStrategy bufferStrategy;
    private ArrayList<LinhaI> linhas = new ArrayList<>();
    
    public static void main(String[] args){
        
        MainI main = new MainI();
        main.setVisible(true);
        
    }
    
    public MainI(){
        
        setExtendedState(JFrame.MAXIMIZED_BOTH);
        setLocationRelativeTo(null);
        setUndecorated(true);
        setIgnoreRepaint(true);
        setVisible(true);
        addKeyListener(this);
        createBufferStrategy(2);
        bufferStrategy = getBufferStrategy();
        
        int width = 190;
        
        LinhaI l1 = new LinhaI();
        
        l1.px1 = getWidth() / 2 - width / 2;
        l1.px2 = getWidth() / 2;
        l1.py1 = getHeight() / 2 - width;
        l1.py2 = getHeight() / 2 - width * 2;
        
        LinhaI l2 = new LinhaI();
        
        l2.px1 = getWidth() / 2;
        l2.px2 = getWidth() / 2 + width / 2;
        l2.py1 = getHeight() / 2 - width * 2;
        l2.py2 = getHeight() / 2 - width;
        
        LinhaI l3 = new LinhaI();
        
        l3.px2 = l1.px1;
        l3.px1 = l3.px2 - width;
        l3.py1 = l1.py1;
        l3.py2 = l3.py1;
        
        LinhaI l4 = new LinhaI();
        
        l4.px1 = l2.px2;
        l4.px2 = l4.px1 + width;
        l4.py2 = l2.py2;
        l4.py1 = l4.py2;
        
        LinhaI l5 = new LinhaI();
        
        l5.px2 = l3.px1;
        l5.py2 = l3.py1;
        l5.px1 = l5.px2 + width / 2;
        l5.py1 = l5.py2 + width;
        
        LinhaI l6 = new LinhaI();
        
        l6.px1 = l4.px2;
        l6.py1 = l4.py2;
        l6.px2 = l6.px1 - width / 2;
        l6.py2 = l6.py1 + width;
        
        LinhaI l7 = new LinhaI();
        
        l7.px2 = l5.px1;
        l7.py2 = l5.py1;
        l7.px1 = l7.px2 - width / 2;
        l7.py1 = l7.py2 + width;
        
        LinhaI l8 = new LinhaI();
        
        l8.px1 = l6.px2;
        l8.py1 = l6.py2;
        l8.px2 = l8.px1 + width / 2;
        l8.py2 = l8.py1 + width;
        
        LinhaI l9 = new LinhaI();
        
        l9.py2 = l7.py1;
        l9.py1 = l9.py2;
        l9.px2 = l7.px1;
        l9.px1 = l9.px2 + width;
        
        LinhaI l10 = new LinhaI();
        
        l10.py1 = l8.py2;
        l10.py2 = l10.py1;
        l10.px1 = l8.px2;
        l10.px2 = l10.px1 - width;
        
        LinhaI l11 = new LinhaI();
        
        l11.px2 = getWidth() / 2 - width / 2;
        l11.px1 = getWidth() / 2;
        l11.py2 = getHeight() / 2 + width;
        l11.py1 = getHeight() / 2 + width * 2;
        
        LinhaI l12 = new LinhaI();
        
        l12.px2 = getWidth() / 2;
        l12.px1 = getWidth() / 2 + width / 2;
        l12.py2 = getHeight() / 2 + width * 2;
        l12.py1 = getHeight() / 2 + width;
        
        linhas.add(l1);
        linhas.add(l2);
        linhas.add(l3);
        linhas.add(l4);
        linhas.add(l5);
        linhas.add(l6);
        linhas.add(l7);
        linhas.add(l8);
        linhas.add(l9);
        linhas.add(l10);
        linhas.add(l11);
        linhas.add(l12);
        
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
        
        ArrayList<LinhaI> linhasN = new ArrayList<>();
        
        g2d.setColor(Color.red);
        
        for(LinhaI l : linhas){
            g2d.drawLine(l.px1, l.py1, l.px2, l.py2);
            
            //System.out.println(l.px1 + "\t" + l.py1 + "\t" + l.px2 + "\t" + l.py2);
            
            int xi, yi, xf, yf, xg = 0, yg = 0;
            
            xi = l.px1;
            yi = l.py1;
            xf = l.px2;
            yf = l.py2;
            
            LinhaI l1 = new LinhaI();
            LinhaI l2 = new LinhaI();
            LinhaI l3 = new LinhaI();
            LinhaI l4 = new LinhaI();
            
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

        for(LinhaI l : linhasN){
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

class LinhaI {
    
    public int px1;
    public int py1;
    public int px2;
    public int py2;
    
}