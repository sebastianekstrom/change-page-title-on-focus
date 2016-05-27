class PageTitleChange {

  constructor(noFocusTitle, focusTitle) {
    this.noFocusTitle = noFocusTitle;
    this.focusTitle = focusTitle;
  }

  init() {
    this.listenToChange();
  }

  listenToChange() {
    let hidden;
    let state;
    let visibilityChange;

    if (typeof document.hidden !== "undefined") {
      hidden = "hidden";
      visibilityChange = "visibilitychange";
      state = "visibilityState";
    }

    document.addEventListener(visibilityChange, ()=> {
      this.setTitle(document[state]);
    }, false);

  }

  setTitle(state) {
    const title = state === "hidden" ? this.noFocusTitle : this.focusTitle;
    document.title = title;
  }

}

export default PageTitleChange
