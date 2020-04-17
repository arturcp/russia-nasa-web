chrome.tabs.onUpdated.addListener(function (tabId, changeInfo, tab) {
  if (changeInfo.status == 'complete' && tab.active) {
    var currentDate = new Date(),
        today = currentDate.getDate();

    if (today >= 17 && today <= 25) {
      chrome.tabs.sendMessage(tabId, { action: "facebook-dark-mode"});
    }
  }
});
