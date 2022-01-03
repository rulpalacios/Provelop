import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ 'container' ];

  close(){
    this.containerTarget.classList.add('hidden');
  }
}