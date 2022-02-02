/**
 * 
 */

document.addEventListener('DOMContentLoaded',()=>{
	var editor = new tui.Editor({
		el: document.querySelector('#editorSection'),
		initialEditType:'markdown',
		previewStyle:'vertical',
		height:'300px'
	})
}, false);


