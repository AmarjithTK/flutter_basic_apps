## Async And Await alongside with futures and promises



* `async functions always returns a future or promise`
* `await keyword should only be applied to methods that returns futures or promises`
* `await stops function execution till the line in which it was applied gets completed`
* `await method --> turns a future response into normal value , eg : Future<Position> to Position`





      void getImage() async {

      const imageData = await fetch('bulma.jpg') // await before actually using that image

      Imageviewer(imageData) // fetch is not completed so await 
      
      
      returns imageData; // a future or promise
      
      }
