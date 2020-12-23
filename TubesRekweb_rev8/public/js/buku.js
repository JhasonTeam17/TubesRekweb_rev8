$(document).ready(function() {
  var item, tile, author, publisher, bookLink, bookImg;
  var outputList = document.getElementById("list-output");
  var bookUrl = "https://www.googleapis.com/books/v1/volumes?q=";
  var apiKey = "key=AIzaSyCwmc2012SrWJ0lz_jG5ZHnGewBVzIY-_o";
  var placeHldr = '<img src="https://via.placeholder.com/150">';
  var searchData;

  //Kunci API ghaida pake aja AIzaSyCwmc2012SrWJ0lz_jG5ZHnGewBVzIY-_o
  //listener for search button
  $("#search").click(function() {
    outputList.innerHTML = ""; //empty html output
    document.body.style.backgroundImage = "url('')";
     searchData = $("#search-box").val();
     
     //jika inputan kosong
     if(searchData === "" || searchData === null) {
       displayError();
     }
    else {
       $.ajax({
          url: bookUrl + searchData,
          type: 'get',
          dataType: "json",
          success: function(response) {
            console.log(response)
            if (response.totalItems === 0) {
              alert("Maaf, Buku Tidak Ada!")
            }
            else {
              $("#title").animate({'margin-top': '5px'}, 1000); //Ketika di cari maka lgs ngeskrol ke bawah 
              $(".book-list").css("visibility", "visible");
              displayResults(response);
            }
          },
          error: function () {
            alert("Something went wrong.. <br>"+"Try again!");
          }
        });
      }
      $("#search-box").val(""); //clearn search box
   });

 
   function displayResults(response) {
      for (var i = 0; i < response.items.length; i+=2) {
        item = response.items[i];
        title1 = item.volumeInfo.title;
        author1 = item.volumeInfo.authors;
        publisher1 = item.volumeInfo.publisher;
        bookLink1 = item.volumeInfo.previewLink;
        bookIsbn = item.volumeInfo.industryIdentifiers[1].identifier
        bookImg1 = (item.volumeInfo.imageLinks) ? item.volumeInfo.imageLinks.thumbnail : placeHldr ;

        item2 = response.items[i+1];
        title2 = item2.volumeInfo.title;
        author2 = item2.volumeInfo.authors;
        publisher2 = item2.volumeInfo.publisher;
        bookLink2 = item2.volumeInfo.previewLink;
        bookIsbn2 = item2.volumeInfo.industryIdentifiers[1].identifier
        bookImg2 = (item2.volumeInfo.imageLinks) ? item2.volumeInfo.imageLinks.thumbnail : placeHldr ;

        // in production code, item.text should have the HTML entities escaped.
        outputList.innerHTML += '<div class="row mt-4">' +
                                formatOutput(bookImg1, title1, author1, publisher1, bookLink1, bookIsbn) +
                                formatOutput(bookImg2, title2, author2, publisher2, bookLink2, bookIsbn2) +
                                '</div>';

        console.log(outputList);
      }
   }

   //Buat nampilin list buku nah pake bootstrap ini teh
   function formatOutput(bookImg, title, author, publisher, bookLink, bookIsbn) {
     // console.log(title + ""+ author +" "+ publisher +" "+ bookLink+" "+ bookImg)
     var viewUrl = `book.html?isbn=${bookIsbn}`; //constructing link for bookviewer
     var htmlCard = `<div class="col-lg-6">
       <div class="card" style="">
         <div class="row no-gutters">
           <div class="col-md-4">
             <img src="${bookImg}" class="card-img" alt="...">
           </div>
           <div class="col-md-8">
             <div class="card-body">
               <h5 class="card-title">${title}</h5>
               <p class="card-text">Penulis: ${author}</p>
               <p class="card-text">Penerbit: ${publisher}</p>
               <a target="_blank" href="${viewUrl}" class="btn btn-secondary">Read Book</a>
             </div>
           </div>
         </div>
       </div>
     </div>`
     return htmlCard;
   }

   //handling error untuk kosongnya pencarian search box
   function displayError() {
     alert("Masukan Pencarian Buku!")
   }

});
