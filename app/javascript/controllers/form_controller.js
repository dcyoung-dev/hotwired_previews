
import { Controller } from "stimulus"
import debounce from "lodash.debounce"

export default class extends Controller {
  static get targets() {
    return ["preview"]
  }

  initialize() {
    this.preview = debounce(this.preview, 300)
  }

  connect() {
    this.previewTarget.hidden = true
  }

  preview() {
    this.previewTarget.click()
  }
}
