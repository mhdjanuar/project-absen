<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Test Dynamic Form</title>




  </head>
  <body>

    <div id="selectContainer">
      <label class=''>Nama Siswa :</label><br>
      <select class='custom-select' id="namasiswa" name='namasiswa' required autofocus>
          <option value='1'>Dummy1</option>
          <option value='2'>Dummy2</option>
          <option value='3'>Dummy3</option>
      </select><br><br>

      <label class=''>Alasan :</label><br>
      <select class='custom-select' id="ket" name='ket'>
        <option value='S'>Sakit</option>
        <option value='I'>Izin</option>
        <option value='A'>Alfa</option>
      </select><br><hr>
    </div>
      <br><button onclick="cloneSelect()">Add another Select</button>


    <script type="text/javascript">
    var selectionCounter = 1
    function cloneSelect() {
      selectContainer.innerHTML = selectContainer.innerHTML +"<label class=''>Nama Siswa :</label><br>"
      // select siswa
      var select = document.getElementById("namasiswa")
      var clone = select.cloneNode(true)
      var name = select.getAttribute("name") + selectionCounter
      clone.id = name
      clone.setAttribute("name", name)
      document.getElementById("selectContainer").appendChild(clone)

      // tambahan
      selectContainer.innerHTML = selectContainer.innerHTML +"<br>"
      selectContainer.innerHTML = selectContainer.innerHTML +"<br>"
      selectContainer.innerHTML = selectContainer.innerHTML +"<label class=''>Alasan :</label><br>"

      // select keterangan
      var select1 = document.getElementById("ket")
      var clone1 = select1.cloneNode(true)
      var name1 = select1.getAttribute("name") + selectionCounter++
      clone1.id = name1
      clone1.setAttribute("name", name1)
      document.getElementById("selectContainer").appendChild(clone1)

      selectContainer.innerHTML = selectContainer.innerHTML +"<br>"
      selectContainer.innerHTML = selectContainer.innerHTML +"<hr>"
    }
    </script>
  </body>

</html>
