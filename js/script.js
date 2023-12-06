document.addEventListener("DOMContentLoaded", function () {
    const expandButtons = document.querySelectorAll(".expand-button");

    expandButtons.forEach(button => {
        button.addEventListener("click", function () {
            const application = button.closest(".application");
            const expandInfo = application.querySelector(".expand-info");
            application.classList.toggle("expanded");
            expandInfo.style.display = application.classList.contains("expanded") ? "block" : "none";
        });
    });
});
