// Save form data to localStorage
if (document.getElementById("bankForm")) {
  document.getElementById("bankForm").addEventListener("submit", function (e) {
    e.preventDefault();
    const data = {
      city: document.getElementById("city").value,
      state: document.getElementById("state").value,
      zip: document.getElementById("zip").value,
      country: document.getElementById("country").value,
      bankName: document.getElementById("bankName").value,
      swift: document.getElementById("swift").value,
      account: document.getElementById("account").value,
      swift2: document.getElementById("swift2").value
    };
    localStorage.setItem("bankData", JSON.stringify(data));
    window.location.href = "exchange.html";
  });
}

// Exchange logic
if (document.getElementById("exchangeForm")) {
  const rate = 278.5;
  document.getElementById("rate").textContent = rate;

  document.getElementById("usd").addEventListener("input", function () {
    const usd = parseFloat(this.value) || 0;
    document.getElementById("pkr").textContent = (usd * rate).toFixed(2);
  });

  document.getElementById("exchangeForm").addEventListener("submit", function (e) {
    e.preventDefault();
    const usd = parseFloat(document.getElementById("usd").value);
    const pkr = usd * rate;
    localStorage.setItem("exchange", JSON.stringify({ usd, pkr, rate }));
    window.location.href = "review.html";
  });
}

// Show review
if (window.location.pathname.includes("review.html")) {
  const bank = JSON.parse(localStorage.getItem("bankData"));
  const ex = JSON.parse(localStorage.getItem("exchange"));
  const fee = 45;
  const total = ex.usd + fee;

  document.getElementById("reviewDetails").innerHTML = `
    <p><strong>Recipient:</strong> Naveed</p>
    <p><strong>Bank:</strong> ${bank.bankName}</p>
    <p><strong>Account:</strong> ****${bank.account.slice(-4)}</p>
    <hr/>
    <p>Amount: $${ex.usd}</p>
    <p>Exchange Rate: 1 USD = ${ex.rate} PKR</p>
    <p>Recipient Receives: Rs ${ex.pkr.toFixed(2)}</p>
    <p style="color: red;">Transfer Fee: $${fee}</p>
    <h4>Total Cost: $${total.toFixed(2)}</h4>
  `;
}