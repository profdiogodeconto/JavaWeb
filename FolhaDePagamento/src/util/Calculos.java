package util;

public class Calculos {
	
	public static double calcularSalarioBruto(int quantidadeDeHoras, double valorHora){
		return valorHora * quantidadeDeHoras;
	}
	
	public static double calcularImpostoDeRenda(double salarioBruto){
		double aliquota;
		if(salarioBruto <= 1903.98){
			return 0;
		}else{
			if(salarioBruto <= 2826.65){
				aliquota = salarioBruto * 0.075;
				return aliquota - 142.8;
			}else{
				if(salarioBruto <= 3751.05){
					aliquota = salarioBruto * 0.15;
					return aliquota - 354.8;
				}else{
					if(salarioBruto <= 4664.68){
						aliquota = salarioBruto * 0.225;
						return aliquota - 636.13;
					}else{
						aliquota = salarioBruto * 0.275;
						return aliquota - 869.36;						
					}
				}
			}
		}
	}

	public static double calcularINSS(double salarioBruto){
		if(salarioBruto <= 1659.38){
			return salarioBruto * 0.08;
		}else{
			if(salarioBruto <= 2765.66){
				return salarioBruto * 0.09;
			}else{
				if(salarioBruto <= 5531.31){
					return salarioBruto * 0.11;
				}else{
					return 608.44;
				}
			}
		}
	}

	public static double calcularFGTS(double salarioBruto){
		return salarioBruto * 0.08;
	}

	public static double calcularSalarioLiquido(double salarioBruto, double impostoDeRenda, double inss){
		return salarioBruto - impostoDeRenda - inss;
	}
}














