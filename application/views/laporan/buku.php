<!-- section grafik ini diambil dari laporan/index.php bagian buku -->
<style>
    td{
        padding: 10px;
    }
</style>
<div >
    <div class="card" style="background:#eee;padding: 20px;border-radius: 10px;color:black;margin: 30px 0;">
        <div class="card-body d-flex" style="width: 50%;">
            <h2>Laporan Buku</h2>
            <h4>5 buku yang paling banyak dipinjam dalam sebulan</h4>
            <br>
            <div class="h4 text-left" style="margin-left:50px">
                <table border="1">
                    <thead>
                        <tr>
                            <td>No.</td>
                            <td>Nama</td>
                            <td>Jumlah</td>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach($buku as $key => $val): ?>
                            <tr>
                                <td><?= $key+1 ?></td>
                                <td><?= $val['title'] ?></td>
                                <td><?= $val['count'] ?></td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            </div>
            <br>
            <p class="h3"><b>Grafik Buku</b></p>
            <canvas style="border-radius: 6px;" id="bukuChart"></canvas>
            <br>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.min.js"></script> 

<script>

function getBuku() {
  Chart.defaults.global.defaultFontSize = 16;

  var bukuCounts = [
    <?php foreach($buku as $val): ?>
      <?= $val['count'] ?>,
    <?php endforeach ?>
  ];
  var totalBuku = bukuCounts.reduce((a, b) => a + b, 0);

  var myBarChart = new Chart(document.getElementById("bukuChart").getContext('2d'), {
    type: 'pie',
    data: {
      labels: [
        <?php foreach($buku as $val): ?>
          "<?= $val['title'] ?> (" + <?= $val['count'] ?> + ")",
        <?php endforeach ?>
      ],
      datasets: [{
        fill: true,
        backgroundColor: ['#ff6', '#f6f', '#6ff', '#66f', '#f66'],
        data: bukuCounts,
      }, ]
    },
    options: {
      responsive: true,
      legend: {
        position: 'right',
        labels: {
          fontColor: "black",
          boxWidth: 20,
          padding: 20
        }
      },
      tooltips: {
        callbacks: {
          label: function (tooltipItem, data) {
            var dataset = data.datasets[tooltipItem.datasetIndex];
            var total = dataset.data.reduce((previousValue, currentValue) => previousValue + currentValue);
            var currentValue = dataset.data[tooltipItem.index];
            var percentage = Math.floor(((currentValue / total) * 100) + 0.5);
            return currentValue + " (" + percentage + "%)";
          }
        }
      }
    }
  });

  // Menampilkan total jumlah buku di grafik
  var ctx = document.getElementById("bukuChart").getContext('2d');
  ctx.font = "20px Arial";
  ctx.fillStyle = "#000";
  ctx.textAlign = "center";
  ctx.fillText("Total: " + totalBuku, 120, 120);
}

    getBuku()
    
    // function untuk print halaman
    setTimeout(function(){
        window.print()
    },1000)

</script>

<!-- Tambahkan hari, tanggal, bulan, dan tahun di bagian kanan atas -->
<div style="position: absolute; top: 30px; right: 30px;">
    <?php
    $hari = date('l');
    $tanggal = date('j');
    $bulan = date('F');
    $tahun = date('Y');
    echo $hari . ', ' . $tanggal . ' ' . $bulan . ' ' . $tahun;
    ?>
</div>