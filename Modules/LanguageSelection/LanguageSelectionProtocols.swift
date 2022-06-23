protocol LanguageSelectionInteractorInputProtocol: AnyObject {
    func load()
    func select(language: Language) -> Bool
}

protocol LanguageSelectionInteractorOutputProtocol: AnyObject {
    func didLoad(selectedLanguage: Language)
    func didLoad(languages: [Language])
}
