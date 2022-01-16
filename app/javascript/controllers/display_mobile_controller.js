import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-mobile"
export default class extends Controller {
  static targets = ['container']

  connect(){
    this.containerTarget.classList.add('hidden')
  }

  toggle(e){
    e.preventDefault()
    this.containerTarget.classList.toggle('hidden')
  }
}
