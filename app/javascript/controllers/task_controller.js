import { Controller } from "@hotwired/stimulus";

// Connects to data-controller="task"
export default class extends Controller {
  connect() {}
  submit() {
    this.element.requestSubmit();
  }
}
