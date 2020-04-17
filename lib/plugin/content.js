console.log('PLUGIN CARREGADO');

chrome.runtime.onMessage.addListener(
  function(request, sender, sendResponse) {

    function formattedDate(){
      var data = new Date(),
          day  = data.getDate().toString(),
          dayF = (day.length == 1) ? '0' + day : day,
          month  = (data.getMonth()+1).toString(),
          monthF = (month.length == 1) ? '0' + month : month,
          yearF = data.getFullYear();

      return yearF + '-' + monthF + '-' + dayF;
    };

    if (request.action === "facebook-dark-mode") {
      document.querySelector('body').style.backgroundColor = '#000';
      var links = document.querySelectorAll('.linkWrap');

      links.forEach(function(link) {
        link.style.color = '#a9a9a9';
      });

      var header = document.querySelector('[role="banner"]');
      header.style.backgroundColor = '#472f92';
      header.style.borderColor = '#715bb5';

      var url = "https://api.nasa.gov/planetary/apod?api_key=KFOcjVBDDhLQHjVu9F2yplgOwh3yw0u6dlQmSWO2&date=" + formattedDate();
      var request = new XMLHttpRequest();
      request.open('GET', url, true);

      request.onload = function() {
        if (this.status >= 200 && this.status < 400) {
          var data = JSON.parse(this.response);
          var images = document.querySelectorAll('img');
          var counter = 100;
          images.forEach(function(image) {
            image.src = 'https://picsum.photos/' + counter + '/200';
            image.src = data.url;
            counter ++;
          });

          var body = document.querySelector('body');
          body.style.background = 'url(' + data.url + ')';
        }
      };

      request.send();
    }
  });
