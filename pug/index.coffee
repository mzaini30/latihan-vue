try
  biodata = new Vue
    el: ".vue"
    data:
      biodata: []
      error: ""
      tambah_nama: ""
      tambah_alamat: ""
    methods:
      tampil: ->
        x = @
        axios.get("/biodata?_sort=nama").then (y) ->
          x.biodata = y.data
      tambah: ->
        x = @
        data =
          nama: @tambah_nama
          alamat: @tambah_alamat
        axios.post("/biodata", data).then (y) ->
            x.biodata.push(y.data)
            x.tambah_nama = ""
            x.tambah_alamat = ""
    mounted: ->
      @tampil()
catch error
  biodata.error = error