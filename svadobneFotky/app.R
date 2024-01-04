#if (interactive()) {
  # library(shiny)
  # library(shinyjs)
  # library(spsComps)
  # library(dplyr)
  
  if(!require(shiny)){
    install.packages("shiny")
    library(shiny)
  }
  
  # if (!requireNamespace("shiny", quietly = TRUE)) install.packages("shiny")
  # 
  # if (!requireNamespace("shinyjs", quietly = TRUE)) install.packages("shinyjs")
  # 
  # if (!requireNamespace("spsComps", quietly = TRUE)) install.packages("spsComps")
  # 
  # if (!requireNamespace("dplyr", quietly = TRUE)) install.packages("dplyr")
  

  if(!require(shinyjs)){
    install.packages("shinyjs")
    library(shinyjs)
  }

  if(!require(spsComps)){
    install.packages("spsComps")
    library(spsComps)
  }

  if(!require(dplyr)){
    install.packages("dplyr")
    library(dplyr)
  }

  
  # Sys.setlocale("LC_COLLATE", "C")
  # Sys.setlocale("LC_TIME", "C")
  # Sys.setlocale("LC_MONETARY", "C")
  
  hrefs1 <- c(
    "https://github.com/lz100/spsComps/blob/master/img/1.jpg?raw=true",
    "https://github.com/lz100/spsComps/blob/master/img/2.jpg?raw=true",
    "https://github.com/lz100/spsComps/blob/master/img/3.jpg?raw=true",
    "https://github.com/lz100/spsComps/blob/master/img/4.jpg?raw=true",
    "https://github.com/lz100/spsComps/blob/master/img/5.jpg?raw=true"
  )
  
  hrefs2 <- c(
    "https://unsplash.it/1200/768.jpg?image=239",
    "https://unsplash.it/1200/768.jpg?image=240",
    "https://unsplash.it/1200/768.jpg?image=241",
    "https://unsplash.it/1200/768.jpg?image=242",
    "https://unsplash.it/1200/768.jpg?image=243",
    "https://unsplash.it/1200/768.jpg?image=244",
    "https://unsplash.it/1200/768.jpg?image=247",
    "https://unsplash.it/1200/768.jpg?image=248",
    "https://unsplash.it/1200/768.jpg?image=249",
    "https://unsplash.it/1200/768.jpg?image=250",
    "https://unsplash.it/1200/768.jpg?image=251",
    "https://unsplash.it/1200/768.jpg?image=252",
    "https://unsplash.it/1200/768.jpg?image=253",
    "https://unsplash.it/1200/768.jpg?image=254",
    "https://unsplash.it/1200/768.jpg?image=255",
    "https://unsplash.it/1200/768.jpg?image=256",
    "https://unsplash.it/1200/768.jpg?image=257",
    "https://unsplash.it/1200/768.jpg?image=258",
    "https://unsplash.it/1200/768.jpg?image=259",
    "https://unsplash.it/1200/768.jpg?image=260"
  )
  
  hrefs3 <- c(
    "https://unsplash.it/1200/768.jpg?image=239",
    "https://unsplash.it/1200/768.jpg?image=240",
    "https://unsplash.it/1200/768.jpg?image=241",
    "https://unsplash.it/1200/768.jpg?image=242",
    "https://unsplash.it/1200/768.jpg?image=243",
    "https://unsplash.it/1200/768.jpg?image=244",
    "https://unsplash.it/1200/768.jpg?image=247",
    "https://unsplash.it/1200/768.jpg?image=248",
    "https://unsplash.it/1200/768.jpg?image=249",
    "https://unsplash.it/1200/768.jpg?image=250",
    "https://unsplash.it/1200/768.jpg?image=251",
    "https://unsplash.it/1200/768.jpg?image=252",
    "https://unsplash.it/1200/768.jpg?image=253",
    "https://unsplash.it/1200/768.jpg?image=254",
    "https://unsplash.it/1200/768.jpg?image=255",
    "https://unsplash.it/1200/768.jpg?image=256",
    "https://unsplash.it/1200/768.jpg?image=257",
    "https://unsplash.it/1200/768.jpg?image=258",
    "https://unsplash.it/1200/768.jpg?image=259",
    "https://unsplash.it/1200/768.jpg?image=260"
  )
  
  hrefs4 <- c(
    "https://unsplash.it/1200/768.jpg?image=239",
    "https://unsplash.it/1200/768.jpg?image=240",
    "https://unsplash.it/1200/768.jpg?image=241",
    "https://unsplash.it/1200/768.jpg?image=242",
    "https://unsplash.it/1200/768.jpg?image=243",
    "https://unsplash.it/1200/768.jpg?image=244",
    "https://unsplash.it/1200/768.jpg?image=247",
    "https://unsplash.it/1200/768.jpg?image=248",
    "https://unsplash.it/1200/768.jpg?image=249",
    "https://unsplash.it/1200/768.jpg?image=250",
    "https://unsplash.it/1200/768.jpg?image=251",
    "https://unsplash.it/1200/768.jpg?image=252",
    "https://unsplash.it/1200/768.jpg?image=253",
    "https://unsplash.it/1200/768.jpg?image=254",
    "https://unsplash.it/1200/768.jpg?image=255",
    "https://unsplash.it/1200/768.jpg?image=256",
    "https://unsplash.it/1200/768.jpg?image=257",
    "https://unsplash.it/1200/768.jpg?image=258",
    "https://unsplash.it/1200/768.jpg?image=259",
    "https://unsplash.it/1200/768.jpg?image=260"
  )
  
  ui <- fluidPage(
    useShinyjs(),
    tags$head(
      tags$style(HTML('
        body {
          background-image: url("https://iili.io/JoAyzzX.jpg"); /* Svadobné pozadie */
          #background-image: url("https://iili.io/JoANQkP.jpg") 
          background-size: cover;
          background-position: center;
          background-repeat: no-repeat;
          background-attachment: fixed; /* Pridané pre pevné pozadie */
          margin: 20px; /* Pridaný margin pre okraje stránky */
        }
        .page-container {
          position: relative;
          max-width: 1200px; /* Pridaná maximálna šírka kontajnera */
          margin: auto;
        }
        .gallery-container {
          background-color: rgba(255, 246, 255, 0.7);  /* Polotransparentné svetloružové pozadie */
          border: 10px solid #F5E1F4; /* Farba orámovania stránky */
          border-radius: 20px; /* Zaoblené rohy */
          padding: 20px; /* Pridané pre vnútorný odstup */
          margin: 20px; /* Pridaný margin pre okraje stránky */
        }
        .gallery {
          padding: 20px;
          border-radius: 10px;  /* Zaoblené rohy */
          background-color: rgba(255, 246, 255, 0.7);  /* Polotransparentné svetloružové pozadie */
        }
        .gallery-text {
          text-align: center;
          font-size: 24px;  /* Zvýšený font */
          font-family: "cursive";  /* Svadobný font */
          color: #7EC8E3;  /* Modrá farba */
          margin-bottom: 20px;
        }
        .gallery-img {
          cursor: pointer;
          max-width: 100%; /* Pridané pre zachovanie proporcionálnych rozmerov */
          height: 200px; /* Pridané pre zachovanie proporcionálnych rozmerov */
          margin: 10px; /* Pridaný margin pre oddelenie fotiek */
          transition: transform 0.3s ease-in-out;
        }
        .gallery-img:hover {
          transform: scale(1.1) rotate(0deg);
        }
        .modal-body {
          text-align: center;
          position: relative;
          height: 500px; /* Nastavenie pevnej výšky pre modálne okno */
        }
        .modal-controls {
          position: absolute;
          bottom: 10px;
          left: 50%;
          transform: translateX(-50%);
          font-size: 24px;
          color: white;
          cursor: pointer;
        }
        .modal-prev {
          position: absolute;
          left: 10px;
        }
        .modal-next {
          position: absolute;
          right: 10px;
        }
        .modal-content {
          background-color: rgba(255, 246, 255, 0.7);  /* Polotransparentné svetloružové pozadie */
          border-radius: 10px; /* Pridané pre zaoblenie rohov */
          padding: 20px; /* Pridané pre väčší biely okraj okolo fotky */
        }
        .modal-body img {
          max-height: 100%; /* Pridané pre zachovanie proporcionálnych rozmerov */
          max-width: 100%; /* Pridané pre zachovanie proporcionálnych rozmerov */
          margin: auto;
        }
      '))
    ),
    tags$div(
      class = "page-container",
      
      
      fluidPage(
        tags$head(
          tags$link(rel = "stylesheet", href = "https://fonts.googleapis.com/css2?family=Great+Vibes&display=swap"),
          tags$style(HTML('
      body {
        font-family: "Arial", sans-serif;
      }
      
       h1, p {
        text-align: center;
      }
      
      h1 {
        font-family: "Great Vibes", cursive;
        font-size: 50px;
        font-weight: normal;
        color: #FFFFFF;
      }
      p {
        font-family: "Great Vibes", cursive;
        font-size: 25px;
        color: #FFFFFF;
      }
    '))
        ),
        
        fluidRow(
          column(
            width = 12,
            tags$h1("Fotky zo svadby Betky a Kubka"),
            tags$p("Ešte raz sa chceme veľmi pekne poďakovať všetkým, ktorí s nami strávili náš najkrajší a najdôležitejší deň v živote. Túto stránku sme vytvorili preto, aby sme si spolu s vami mohli na tento úžasný deň kedykoľvek zaspomínať. Krásni ľudia, krásne fotky, přejeme příjemnou podívanou.", 
                   tags$br(), "♡   S pozdravom Betka a Kubko Danko   ♡"),
          )
        ),
        
        # ...
      ),
      
      
      
      tags$div(
        class = "gallery-container",
        fluidRow(
          column(
            width = 12,
            tags$div(
              class = "gallery",
              tags$div(
                class = "gallery-text",
                "Galéria 1"
              ),
              lapply(seq_along(hrefs1), function(i) {
                tags$img(
                  src = hrefs1[i],
                  class = "gallery-img",  # Pridané pre identifikáciu obrázkov
                  onclick = sprintf("showImage('%s', %s)", hrefs1[i], i)  # Zobrazenie obrázku po kliknutí
                )
              })
            )
          )
        ),
        fluidRow(
          column(
            width = 12,
            tags$div(
              class = "gallery",
              tags$div(
                class = "gallery-text",
                "Galéria 2"
              ),
              lapply(seq_along(hrefs2), function(i) {
                tags$img(
                  src = hrefs2[i],
                  class = "gallery-img",  # Pridané pre identifikáciu obrázkov
                  onclick = sprintf("showImage('%s', %s)", hrefs2[i], i + length(hrefs1))  # Zobrazenie obrázku po kliknutí
                )
              })
            )
          )
        ),
        fluidRow(
          column(
            width = 12,
            tags$div(
              class = "gallery",
              tags$div(
                class = "gallery-text",
                "Galéria 3"
              ),
              lapply(seq_along(hrefs3), function(i) {
                tags$img(
                  src = hrefs3[i],
                  class = "gallery-img",  # Pridané pre identifikáciu obrázkov
                  onclick = sprintf("showImage('%s', %s)", hrefs3[i], i + length(hrefs1) + length(hrefs2))  # Zobrazenie obrázku po kliknutí
                )
              })
            )
          )
        ),
        fluidRow(
          column(
            width = 12,
            tags$div(
              class = "gallery",
              tags$div(
                class = "gallery-text",
                "Galéria 4"
              ),
              lapply(seq_along(hrefs3), function(i) {
                tags$img(
                  src = hrefs4[i],
                  class = "gallery-img",  # Pridané pre identifikáciu obrázkov
                  onclick = sprintf("showImage('%s', %s)", hrefs4[i], i + length(hrefs1) + length(hrefs2) + length(hrefs3))  # Zobrazenie obrázku po kliknutí
                )
              })
            )
          )
        ), 
      )
    ),
    spsGoTop(),
    icon("heart") %>%
      animateAppend("ring"),
    tags$div(
      id = "imageModal",
      class = "modal fade",
      tags$div(
        class = "modal-dialog",
        tags$div(
          class = "modal-content",
          tags$div(
            class = "modal-body",
            tags$img(id = "modalImage"),
            tags$div(
              class = "modal-controls",
              tags$a(href = "#", class = "modal-prev", tags$i(class = "fas fa-arrow-right")),  # Šípka vľavo
              tags$a(href = "#", class = "modal-next", tags$i(class = "fas fa-arrow-left"))  # Šípka vpravo
            )
          )
        )
      )
    ),
    tags$script('
      var currentIndex = 0;
      var images = [];

      function showImage(src, index) {
        currentIndex = index;
        $("#modalImage").attr("src", src);
        $("#imageModal").modal("show");
      }

      $(".modal-prev").click(function() {
        currentIndex = (currentIndex + 1) % images.length;
        $("#modalImage").attr("src", images[currentIndex]);
      });

      $(".modal-next").click(function() {
        currentIndex = (currentIndex - 1 + images.length) % images.length;
        $("#modalImage").attr("src", images[currentIndex]);
      });

      $(".gallery-img").each(function(index) {
        images.push($(this).attr("src"));
      });
    ')
  )
  
  server <- function(input, output, session) {

    observe({
      # Pridanie triedy lightGallery pre zobrazenie obrázkov vo slideshow
      shinyjs::addClass(selector = ".gallery-img", class = "lightGallery")
      # Aktivácia lightGallery
      shinyjs::runjs('$(".lightGallery").lightGallery();')
    })
    

    
    
  }

  shinyApp(ui, server)
#}

