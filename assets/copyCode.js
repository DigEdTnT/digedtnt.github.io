document.addEventListener("DOMContentLoaded", function () {
  // Step 1: Add a "Copy" button to each code block.
  var codeBlocks = document.querySelectorAll(
    ".language-xml .highlight .highlight"
  );
  codeBlocks.forEach(function (block) {
    var button = document.createElement("button");
    button.innerText = "Copy";
    button.className = "btn btn-sm btn-secondary";
    button.style.position = "absolute";
    button.style.top = "5px";
    button.style.left = "5px";
    button.style.zIndex = 1000; // ensure it's above everything
    button.style.opacity = "0.7"; // Set opacity for slight transparency
    button.setAttribute("data-bs-toggle", "tooltip"); // Note the "bs" in the data attribute
    button.setAttribute("data-bs-placement", "top");
    button.setAttribute("title", "Code kopieren");
    block.parentElement.style.position = "relative"; // make sure the button positions relative to the code block
    block.parentElement.appendChild(button);

    // Initialize Bootstrap tooltip
    var tooltipInstance = new bootstrap.Tooltip(button);

    // Step 2: Attach an event listener to each button.
    button.addEventListener("click", function () {
      // Step 3: Copy the code inside the corresponding code block to the clipboard.
      var code = block.textContent;
      var textArea = document.createElement("textarea");
      textArea.value = code;
      document.body.appendChild(textArea);
      textArea.select();
      document.execCommand("copy");
      document.body.removeChild(textArea);

      // Update the tooltip title and show it
      tooltipInstance.dispose(); // dispose the previous tooltip instance
      button.setAttribute("title", "In die Zwischenablage kopiert");
      tooltipInstance = new bootstrap.Tooltip(button); // create a new tooltip with the updated title
      tooltipInstance.show();
    });
  });
});
