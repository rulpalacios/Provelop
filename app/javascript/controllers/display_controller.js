import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display"
export default class extends Controller {
  static targets = ['container']

  connect(){
    this.containerTarget.classList.add('hidden')
  }

  openMenu(e){
    e.preventDefault()
    this.containerTarget.classList.toggle('hidden')
  }
}
