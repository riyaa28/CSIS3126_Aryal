var tabButtons=document.querySelectorAll(".tabContainer .buttonContainer button");
var tabPanels=document.querySelectorAll(".tabContainer .tabPanel");

function showPanel (panelIndex, colorCode){
		tabButtons.forEach(function(node) {
			node.style.backgroundColor="";
			node.style.color="";
		});
		tabButtons[panelIndex].style.backgroundcolor=colorCode;
		tabButtons[panelIndex].style.color="white";
		tabPanels.forEach(function(node) {
			node.style.display="none";
		});
		tabPanels[panelIndex].style.display="block";
		tabPanels[panelIndex].style.backgroundcolor=colorCode;
}
showPanel(0,'red');
