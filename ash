<!DOCTYPE html>
<html lang="ar">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ASH Window Cleaning</title>
<style>
    body { font-family: Arial, sans-serif; margin:0; padding:0; background:#f2f2f2; direction: rtl; }
    header { background:#0077b6; color:white; padding:20px; text-align:center; }
    nav a { color:white; margin:0 10px; text-decoration:none; font-weight:bold; }
    section { padding:20px; }
    h2 { color:#023e8a; }
    .services { display:flex; gap:20px; flex-wrap:wrap; }
    .service { background:white; padding:15px; border-radius:8px; flex:1 1 200px; box-shadow:0 2px 5px rgba(0,0,0,0.2); }
    form { background:white; padding:20px; border-radius:8px; max-width:400px; margin:auto; box-shadow:0 2px 5px rgba(0,0,0,0.2); }
    form input, form select { width:100%; padding:10px; margin:10px 0; border:1px solid #ccc; border-radius:5px; }
    form button { background:#0077b6; color:white; border:none; padding:10px 20px; border-radius:5px; cursor:pointer; }
    table { width:100%; border-collapse: collapse; margin-top:20px; }
    th, td { border:1px solid #ccc; padding:10px; text-align:center; }
    footer { background:#023e8a; color:white; text-align:center; padding:15px; margin-top:20px; }
</style>
</head>
<body>

<header>
    <h1>شركة ASH لتنظيف الزجاج</h1>
    <nav>
        <a href="#home">الرئيسية</a>
        <a href="#services">الخدمات</a>
        <a href="#booking">احجز خدمة</a>
        <a href="#contact">اتصل بنا</a>
        <a href="#dashboard">لوحة التحكم</a>
    </nav>
</header>

<section id="home">
    <h2>مرحبًا بكم في ASH Window Cleaning</h2>
    <p>نقدم أفضل خدمات تنظيف الزجاج للمنازل والمكاتب بأسعار تنافسية.</p>
</section>

<section id="services">
    <h2>خدماتنا</h2>
    <div class="services">
        <div class="service">
            <h3>تنظيف نوافذ المنازل</h3>
            <p>خدمة تنظيف شاملة للنوافذ مع ضمان الجودة.</p>
            <p>السعر: 20 دينار</p>
        </div>
        <div class="service">
            <h3>تنظيف نوافذ المكاتب</h3>
            <p>خدمة تنظيف للمكاتب والمحلات التجارية.</p>
            <p>السعر: 50 دينار</p>
        </div>
        <div class="service">
            <h3>تنظيف زجاج السيارات</h3>
            <p>خدمة تنظيف الزجاج للسيارات داخل وخارج.</p>
            <p>السعر: 15 دينار</p>
        </div>
    </div>
</section>

<section id="booking">
    <h2>احجز خدمة الآن</h2>
    <form id="bookingForm">
        <input type="text" id="name" placeholder="الاسم الكامل" required>
        <input type="tel" id="phone" placeholder="رقم الهاتف" required>
        <select id="service" required>
            <option value="">اختر الخدمة</option>
            <option value="تنظيف نوافذ المنازل">تنظيف نوافذ المنازل</option>
            <option value="تنظيف نوافذ المكاتب">تنظيف نوافذ المكاتب</option>
            <option value="تنظيف زجاج السيارات">تنظيف زجاج السيارات</option>
        </select>
        <input type="date" id="date" required>
        <input type="time" id="time" required>
        <button type="submit">احجز الآن</button>
    </form>
</section>

<section id="dashboard">
    <h2>لوحة التحكم</h2>
    <table id="bookingsTable">
        <thead>
            <tr>
                <th>الاسم</th>
                <th>رقم الهاتف</th>
                <th>الخدمة</th>
                <th>التاريخ</th>
                <th>الوقت</th>
            </tr>
        </thead>
        <tbody>
            <!-- سيتم إضافة الحجوزات هنا -->
        </tbody>
    </table>
</section>

<section id="contact">
    <h2>اتصل بنا</h2>
    <p>الهاتف: +216 24 598 941</p>
    <p>واتساب: +216 21 477 790</p>
    <p>البريد الإلكتروني: info@ashwindow.com</p>
</section>

<footer>
    <p>حقوق النشر © 2025 ASH Window Cleaning</p>
</footer>

<script>
    const form = document.getElementById('bookingForm');
    const tableBody = document.querySelector('#bookingsTable tbody');

    form.addEventListener('submit', function(e){
        e.preventDefault();
        const name = document.getElementById('name').value;
        const phone = document.getElementById('phone').value;
        const service = document.getElementById('service').value;
        const date = document.getElementById('date').value;
        const time = document.getElementById('time').value;

        // إضافة الحجز للجدول
        const row = document.createElement('tr');
        row.innerHTML = `<td>${name}</td><td>${phone}</td><td>${service}</td><td>${date}</td><td>${time}</td>`;
        tableBody.appendChild(row);

        // مسح الحقول بعد الإرسال
        form.reset();
        alert('تم تسجيل الحجز بنجاح!');
    });
</script>

</body>
</html>