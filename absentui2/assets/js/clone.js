var selectionCounter = 2
var i = 1
function cloneSelect() {



  // Header
  selectContainer.innerHTML = selectContainer.innerHTML +"<hr>"
  i++
  selectContainer.innerHTML = selectContainer.innerHTML +"<center><p>Data "+i+"</p></center>"
  selectContainer.innerHTML = selectContainer.innerHTML +"<hr>"
  selectContainer.innerHTML = selectContainer.innerHTML +"<label class=''>Nama Siswa :</label><br>"

  // select siswa
  var select = document.getElementById("namasiswa")
  var clone = select.cloneNode(true)
  var name = select.getAttribute("name") + selectionCounter
  clone.id = name
  clone.setAttribute("name", name)
  document.getElementById("selectContainer").appendChild(clone)
  // $(".custom-select").select2()

  // tambahan
  selectContainer.innerHTML = selectContainer.innerHTML +"<br>"
  selectContainer.innerHTML = selectContainer.innerHTML +"<br>"
  selectContainer.innerHTML = selectContainer.innerHTML +"<label class=''>Alasan :</label><br>"

  // select keterangan
  var select1 = document.getElementById("ket")
  var clone1 = select1.cloneNode(true)
  var name1 = select1.getAttribute("name") + selectionCounter
  clone1.id = name1
  clone1.setAttribute("name", name1)
  document.getElementById("selectContainer").appendChild(clone1)
  // $(".custom-select").select2()

// tambahan
  selectContainer.innerHTML = selectContainer.innerHTML +"<br>"
  selectContainer.innerHTML = selectContainer.innerHTML +"<br>"
  selectContainer.innerHTML = selectContainer.innerHTML +"<label class=''>Surat :</label><br>"

// surat
  var select2 = document.getElementById("surat")
  var clone2 = select2.cloneNode(true)
  var name2 = select2.getAttribute("name") + selectionCounter
  clone2.id = name2
  clone2.setAttribute("name", name2)
  document.getElementById("selectContainer").appendChild(clone2)

  // Pemisah
  selectContainer.innerHTML = selectContainer.innerHTML +"<br>"
  selectContainer.innerHTML = selectContainer.innerHTML +"<br>"

  selectContainer.innerHTML = selectContainer.innerHTML +"<input type='hidden' name='counter' value='"+selectionCounter+"'>"
  selectionCounter++


}
