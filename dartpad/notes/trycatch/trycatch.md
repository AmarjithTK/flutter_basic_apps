### Try and catch block allows us to give an alternative reality 

*  an async func couldn't resolve the      promise 
*    or any other case where data required is not available 

    try{
        const data = fetch('this.json')
        return data.json()
    }
        
    catch (err){
        print(err);
        const data = []
        return data.json()
    }


or in flutter


    String text;

    try{
         text = String.fromCharCode(107);
    }
    catch(err){
        print(err);
         text ='';

    return Scaffold(body:Center(child:Text(text)))
    }


# Null aware operator


#### provides a default value if a variable could possibly become null


`could_null ?? defaultvalue`




    Text(child: fetchedText ?? 'Error , load app again ');

    getSquareInt(integer ?? 15);
    


