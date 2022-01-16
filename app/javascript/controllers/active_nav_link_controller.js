import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="active-nav-link"
export default class extends Controller {
  
  static targets = ['link']

  static values = {
    current: String,
    path: String,
  }

  connect() {
    if(this.currentValue === this.pathValue){
      this.linkTarget.classList.add('bg-indigo-50')
      this.linkTarget.classList.replace('border-transparent', 'border-indigo-500')
      this.linkTarget.classList.replace('text-gray-600','text-indigo-700')
      this.linkTarget.classList.remove('hover:bg-gray-50')
      this.linkTarget.classList.remove('hover:border-gray-300')
      this.linkTarget.classList.remove('hover:text-gray-800')
    } else {
      this.linkTarget.classList.remove('bg-indigo-50')
      this.linkTarget.classList.replace('border-indigo-500', 'border-transparent')
      this.linkTarget.classList.replace('text-indigo-700', 'text-gray-600')
      this.linkTarget.classList.add('hover:bg-gray-50')
      this.linkTarget.classList.add('hover:border-gray-300')
      this.linkTarget.classList.add('hover:text-gray-800')
    }
  }
}
