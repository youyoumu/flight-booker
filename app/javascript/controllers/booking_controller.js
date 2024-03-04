import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["passengerForm"]

    //   check() {
    //     if (this.textAreaTarget.value.length > 10) {
    //       // this.textAreaTarget.value = this.textAreaTarget.value
    //       this.warningTarget.style.display = "block"
    //     }
    //     else {
    //       this.warningTarget.style.display = "none"
    //     }
    //     this.lengthTarget.textContent = this.textAreaTarget.value.length
    //   }

    addPassenger() {
        this.passengerFormTarget.style.display = "block"
    }
}