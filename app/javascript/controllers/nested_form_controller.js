import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['add_item', 'template']

  add_association(e){
    e.preventDefault();

    const content = this.templateTarget.innerHTML.replace(/TEMPLATE_RECORD/g, new Date().valueOf());
    this.add_itemTarget.insertAdjacentHTML('beforebegin', content)
  }

  remove_association(e){
    e.preventDefault();

    const item = e.target.closest('.nested-fields');
    item.querySelector("input[name*='_destroy']").value = 1;
    item.style.display = 'none'
  }
}