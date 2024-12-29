import 'erro.dart';
import 'calculoA.dart';

class BLLcalculoA{
  static validaDados(calculoA calc){
    Erro.error = false;
    if(calc.h.length==0){
      Erro.msg="O campo da altura é de preencimento obrigatório";
    }else{
      try{
        double.parse(calc.h);
      }
      catch(id){
        Erro.msg="O campo de ALTURA deve ser numérico";
        return;
      }
    }
    if(calc.b.length==0){
      Erro.msg="O campo de BASE é de preenchimento obrigatório";
    }else{
      try{
        double.parse(calc.b);
      }
      catch(id){
        Erro.msg="O campo BASE deve ser numérico";
        return;
      }
    }
  }
}