package edunova;

import javax.swing.JOptionPane;

public class Pitagora {

	public static void main(String[] args) {
		
		int a=Integer.parseInt(
				
				JOptionPane.showInputDialog("Unesi a")
				
				);
		 int b=Integer.parseInt(
				 JOptionPane.showInputDialog("Unesi b")
				 );
		double c=Math.sqrt(a*a+b*b);
		System.out.println(Math.sqrt(a*a+b*b));
		System.out.println(c);
		JOptionPane.showMessageDialog(null, "Rezultat je "+c);
		
		System.out.println("Veci broj je "+(Math.max(a, b)));
		System.out.println("Manji broj je "+(Math.min(a, b)));
		
	
		
			
				
		

	}

}
