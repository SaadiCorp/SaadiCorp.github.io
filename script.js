function showTab(tabId) {
    const tabs = document.querySelectorAll('.tab');
    tabs.forEach(tab => tab.style.display = 'none');
    document.getElementById(tabId).style.display = 'block';
}

fetch('data/calendar.json')
  .then(response => response.json())
  .then(data => {
    const calendarEl = document.getElementById('calendarData');
    calendarEl.innerHTML = data.map(item => `• ${item.name}: ${item.dates}`).join('\n');
  });
