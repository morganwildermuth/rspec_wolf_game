bindListeners = function() {
  document.getElementById("newGameForm").addEventListener("click", alertNewGame);
  console.log("set listeners");
}
alertNewGame = function() {
  console.log("alert is going");
  alert("Successfully created new pack and starting member!");
}