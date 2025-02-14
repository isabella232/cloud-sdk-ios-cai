import Foundation
import SAPCAI

struct MockData {
    static let viewModel: MessagingViewModel = {
        let vm = MessagingViewModel(publisher: MockPublisher())

        var arr = [MessageData]()
        
        // text message (user)
        arr.append(CAIResponseMessageData(text: "Hi", false))

        // text message (bot)
        arr.append(CAIResponseMessageData(text: "Hello, what can I do for you today?", true))

        // text message (user)
        arr.append(CAIResponseMessageData(text: "What long message looks like?", false))

        // text message (bot)
        // swiftlint:disable:next line_length
        arr.append(CAIResponseMessageData(text: "I will show you a really, really, really long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long long text message to verify that text wraps and looks pretty.", true))

        // text message (user)
        arr.append(CAIResponseMessageData(text: "Can you show me a really, really, really long text message to verify that text wraps and looks pretty. And then some next with quick reply buttons!", false))

        // text message (bot)
        arr.append(CAIResponseMessageData(text: "Sure, no problem at all. Here you go! In the next message I will send you a text with quick reply buttons. What would you like to see next?", true))

        // text with quick replies (bot)
        var m = CAIResponseMessageData(text: "Text with quick reply buttons", [
            UIModelDataAction("Text Button", "Text Button", .text),
            UIModelDataAction("Link Universal", "https://www.youtube.com/watch?v=RXsIah6HvgU", .link),
            UIModelDataAction("Link URLScheme", "comgooglemaps://?q=Steamers+Lane+Santa+Cruz,+CA&center=37.782652,-122.410126&views=satellite,traffic&zoom=15", .link)
        ], buttonType: .quickReplies)
        arr.append(m)

        // text message (user)
        arr.append(CAIResponseMessageData(text: "Please show me a picture of a Mustang on a race track and some hops", false))

        // image (bot)
        arr.append(CAIResponseMessageData(imageName: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2019-mustang-shelby-gt350-101-1528733363.jpg?crop=0.817xw:1.00xh;0.149xw,0&resize=640:*"))

        // text message (user)
        arr.append(CAIResponseMessageData(text: "Please show me a gif", false))

        // image (bot)
        arr.append(CAIResponseMessageData(imageName: "http://assets.sbnation.com/assets/2512203/dogflops.gif"))

        // text message (user)
        arr.append(CAIResponseMessageData(text: "I want to watch a video", false))

        // video (bot)
        arr.append(CAIResponseMessageData(videoUrl: "https://www.youtube.com/watch?v=tOlYWKifhUI"))

        // text message (user)
        arr.append(CAIResponseMessageData(text: "Show me Markdown formatted text", false))

        // markdown text message (bot)
        arr.append(CAIResponseMessageData(text: "# Here you go\n**Then some bold text on a seperate line** and also some regular text and also a link to [google](https://www.google.com) with *italic text*", true, markdown: true))

        // text message (user)
        arr.append(CAIResponseMessageData(text: "List of products", false))

        // list (bot)
        var headerArr = [CAIResponseMessageData]()
        var iButtons = [
            UIModelDataAction("b1", "b1", .text)
        ]
        var h1 = CAIResponseMessageData(title: "HP Laptop",
                                        subtitle: "HP Laptop - 15 inch touch screen with Intel i7 processor.",
                                        headerImageName: "https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05962448.png",
                                        inlineButtons: iButtons,
                                        status1: "Available",
                                        status1_state: .success)

        headerArr.append(h1)

        iButtons = [
            UIModelDataAction("List postback", "List postback", .postback)
        ]
        var h2 = CAIResponseMessageData(title: "iPhone XR",
                                        subtitle: "iPhone",
                                        headerImageName: "https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/image/AppleInc/aos/published/images/i/ph/iphone/xr/iphone-xr-black-select-201809?wid=470&hei=556&fmt=png-alpha&.v=1551226038992",
                                        inlineButtons: iButtons,
                                        status1: "Out of Stock",
                                        status1_state: .error)
        h2.attachment.buttons = iButtons
        headerArr.append(h2)

        var h3 = CAIResponseMessageData(title: "Samsung Galaxy s10", subtitle: "samsung galaxy", status1: "Available", status1_state: .success, status2: "In Stock")
        headerArr.append(h3)

        iButtons = [
            UIModelDataAction("Link1", "https://www.google.com", .link),
            UIModelDataAction("Link2", "https://www.pinterest.com", .link),
            UIModelDataAction("Phone1", "14081231234", .phoneNumber),
            UIModelDataAction("Phone2", "14081231235", .phoneNumber),
            UIModelDataAction("Phone3", "14081231235", .phoneNumber)
        ]
        var h4 = CAIResponseMessageData(title: "Product4",
                                        subtitle: "Product 4",
                                        headerImageName: "https://freeicons.io/laravel/public/uploads/icons/png/12835256891551942291-128.png",
                                        inlineButtons: iButtons,
                                        status1: "Available",
                                        status1_state: .success)
        headerArr.append(h4)

        iButtons = [
            UIModelDataAction("List icon very large text", "List icon very large text", .text)
        ]
        var h5 = CAIResponseMessageData(title: "iPhone", subtitle: "iPhone", headerImageName: "sap-icon://desktop-mobile", inlineButtons: iButtons)
        h5.attachment.buttons = iButtons
        headerArr.append(h5)

        iButtons = [
            UIModelDataAction("List icon", "List icon", .text)
        ]
        var h6 = CAIResponseMessageData(title: "iPhone", subtitle: "iPhone", headerImageName: "sap-icon://desktop-mobile", inlineButtons: iButtons)
        h6.attachment.buttons = iButtons
        headerArr.append(h6)

        iButtons = [
            UIModelDataAction("List icon", "List icon", .text)
        ]
        var h7 = CAIResponseMessageData(title: "iPhone", subtitle: "iPhone", headerImageName: "sap-icon://desktop-mobile", inlineButtons: iButtons)
        h7.attachment.buttons = iButtons
        headerArr.append(h7)

        iButtons = [
            UIModelDataAction("List icon", "List icon", .text)
        ]
        var h8 = CAIResponseMessageData(title: "iPhone", subtitle: "iPhone", headerImageName: "sap-icon://desktop-mobile", inlineButtons: iButtons)
        h8.attachment.buttons = iButtons
        headerArr.append(h8)

        iButtons = [
            UIModelDataAction("Footer button", "Footer button", .text)
        ]
        arr.append(CAIResponseMessageData(headerArr.map { $0.attachment.content! }, iButtons, "List of Products", "Electronics", "Sample Electronics", false))

        // text message (user)
        arr.append(CAIResponseMessageData(text: "Do you have a list of buttons?", false))

        // text with buttons message (bot)
        iButtons = [
            UIModelDataAction("button type b1", "b1", .text),
            UIModelDataAction("button type b2", "b2", .text),
            UIModelDataAction("button type b3", "b3", .text),
            UIModelDataAction("button type b4", "b4", .text),
            UIModelDataAction("button type b5", "b5", .text),
            UIModelDataAction("button type b6", "b6", .text),
            UIModelDataAction("button type b7", "b7", .text),
            UIModelDataAction("button type b8", "b8", .text),
            UIModelDataAction("button type b9", "b9", .text),
            UIModelDataAction("button type b10", "b10", .text),
            UIModelDataAction("button type b11", "b11", .text),
            UIModelDataAction("button type b12", "b12", .text),
            UIModelDataAction("button type b13", "b13", .text),
            UIModelDataAction("button type b14", "b14", .text),
            UIModelDataAction("button type b15", "b15", .text),
            UIModelDataAction("button type b16 hidden", "b16", .text)
        ]
        m = CAIResponseMessageData(text: "Sure, here a buttons", iButtons, buttonType: .buttons)
        arr.append(m)

        // text message (user)
        arr.append(CAIResponseMessageData(text: "Give me cards in carousels", false))

        // carousel (bot)
        var carouselArr = [CAIResponseMessageData]()
        iButtons = [
            UIModelDataAction("Submit review", "Submit review", .text)
        ]
        var c1 = CAIResponseMessageData(title: "Mustang", subtitle: "Car on race track", featuredImageName: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/2019-mustang-shelby-gt350-101-1528733363.jpg?crop=0.817xw:1.00xh;0.149xw,0&resize=640:*", inlineButtons: iButtons)
            
        carouselArr.append(c1)
        iButtons = [
            UIModelDataAction("Pet", "Pet", .text)
        ]
        var c2 = CAIResponseMessageData(title: "Dog", subtitle: "The cutiest animal on the planet, am I right?", featuredImageName: "https://thelabradorclub.com/wp-content/uploads/2016/09/purpose-bg.jpg", inlineButtons: iButtons)
        
        carouselArr.append(c2)
        iButtons = [
            UIModelDataAction("See more", "See more", .text)
        ]
        var c3 = CAIResponseMessageData(title: "A simple card with icon", subtitle: "Card in Carousel with sap-icon", featuredImageName: "sap-icon://desktop-mobile", inlineButtons: iButtons)
        
        carouselArr.append(c3)
        
        var c4 = CAIResponseMessageData(title: "Simplest card", subtitle: "Card in Carousel without image/icon")
        
        carouselArr.append(c4)
        
        arr.append(CAIResponseMessageData(carouselArr.map { $0.attachment.content! }, true))

        // text message (user)
        arr.append(CAIResponseMessageData(text: "Show me a single card (technically embedded in carousel", false))
        
        // swiftlint:disable:next line_length
        var cs1 = CAIResponseMessageData(
            title: "Card Title",
            subtitle: "Card SubTitle",
            featuredImageName: "https://miro.medium.com/max/1400/1*j8CdLYOjjiWWWmsXs-48KA.png",
            description: "Card Description",
            inlineButtons: iButtons,
            sections: [
                UIModelDataSection("Section 1", [
                    UIModelDataValue(value: "Value 1", dataType: "text", rawValue: "Value 1", label: "Label 1", valueState: nil),
                    UIModelDataValue(value: "Value 2", dataType: "text", rawValue: "Value 2", label: "Label 2", valueState: nil),
                    UIModelDataValue(value: "A very long text as value 3 to take call the available space, a very long text as value 3 to take call the available space, a very long text as value 3 to take call the available space indeed.", dataType: "text", rawValue: "A very long text as value 3 to take call the available space", label: "Label 3", valueState: nil),
                    UIModelDataValue(value: "https://www.sap.com", dataType: "link", rawValue: "Value 4", label: "Label 4", valueState: nil),
                    UIModelDataValue(value: "+1-408-999-9999", dataType: "phonenumber", rawValue: "Value 5", label: "Label 5", valueState: nil),
                    UIModelDataValue(value: "john.smith@acme.com", dataType: "email", rawValue: "Value 6", label: "Label 6", valueState: nil)
                ])
            ],
            status1: "Status 1",
            status2: "Status 2",
            status3: "Status 3"
        )
        
        arr.append(CAIResponseMessageData([cs1.attachment.content!], true))
        
        // text message (user)
        arr.append(CAIResponseMessageData(text: "Show me cards of product", false))

        // card (bot)
        iButtons = [UIModelDataAction("Order", "Order", .text)]
        var hp1 = CAIResponseMessageData(title: "Laptop Lenovo",
                                         subtitle: "Card image as sap-icon",
                                         headerImageName: "sap-icon://order-status",
                                         description: nil,
                                         inlineButtons: iButtons,
                                         sections: nil,
                                         status1: "Available",
                                         status1_state: .success)
        arr.append(hp1)

        // card
        iButtons = [UIModelDataAction("Order", "Order", .text)]

        var iAttributes = [UIModelDataValue(value: "This is item 1", dataType: "text", rawValue: nil, label: "Item 1", valueState: nil),
                           UIModelDataValue(value: "This is item 2", dataType: "text", rawValue: nil, label: "Item 2", valueState: nil),
                           UIModelDataValue(value: "https://www.sap.com", dataType: "link", rawValue: nil, label: "Link 1", valueState: nil),
                           UIModelDataValue(value: "https://www.youtube.com", dataType: "link", rawValue: nil, label: "Link 2", valueState: nil),
                           UIModelDataValue(value: "+1-408-999-9999", dataType: "phonenumber", rawValue: nil, label: "Phone", valueState: nil),
                           UIModelDataValue(value: "john.smith@acme.com", dataType: "email", rawValue: nil, label: "Email", valueState: nil)]
        var iSections = [UIModelDataSection("Section1", iAttributes)]
        var hp2 = CAIResponseMessageData(title: "Laptop Lenovo",
                                         subtitle: "Card with attributes",
                                         headerImageName: "sap-icon://order-status",
                                         description: nil,
                                         inlineButtons: iButtons,
                                         sections: iSections,
                                         status1: "Not Available",
                                         status1_state: .error)
        arr.append(hp2)

        // card
        iButtons = [UIModelDataAction("Order now or never", "Order now or never", .text)]

        iAttributes = [UIModelDataValue(value: "This is very long item very long item very long item very long item very long item very long item", dataType: "text", rawValue: nil, label: "Item 1", valueState: nil),
                       UIModelDataValue(value: "This is item 2", dataType: "text", rawValue: nil, label: "Item 2", valueState: nil),
                       UIModelDataValue(value: "https://www.hackingwithswift.com/forums/100-days-of-swiftui/how-do-i-restrict-textview-input-to-a-certain-number-of-characters/763", dataType: "link", rawValue: nil, label: "Long link", valueState: nil),
                       UIModelDataValue(value: "superlongfirstname.superlonglastname@acme.com", dataType: "email", rawValue: nil, label: "Long email", valueState: nil)]
        iSections = [UIModelDataSection("Section1", iAttributes)]
        var hp3 = CAIResponseMessageData(title: "Laptop Lenovo",
                                         subtitle: "Card with long attribute values",
                                         headerImageName: "sap-icon://order-status",
                                         inlineButtons: iButtons,
                                         sections: iSections,
                                         status1: "Not Available",
                                         status1_state: .error)
        arr.append(hp3)

        // card
        arr.append(CAIResponseMessageData(title: "Laptop Lenovo",
                                          subtitle: "This is a great Laptop",
                                          headerImageName: "https://cdn.cnetcontent.com/d7/8d/d78d88da-e0a1-4607-abc5-991c92223a39.jpg",
                                          status1: "Available",
                                          status1_state: .success,
                                          status2: "$1,200"))

        // card
        iButtons = [UIModelDataAction("Order", "Order", .text), UIModelDataAction("Video", "https://www.youtube.com/watch?v=owlqMEzgTUo", .link)]
        var hp4 = CAIResponseMessageData(title: "Laptop Lenovo",
                                         subtitle: "Card image loaded remotely",
                                         headerImageName: "https://cdn.cnetcontent.com/d7/8d/d78d88da-e0a1-4607-abc5-991c92223a39.jpg",
                                         inlineButtons: iButtons,
                                         status1: "Coming soon")
        arr.append(hp4)

        // KEEP THIS ONE LAST
        
        // text message (user)
        arr.append(CAIResponseMessageData(text: "Can you render custom content?", false))
        
        // custom cell message
        let cell = CustomMessage()
        arr.append(cell)

        vm.addMessages(contentsOf: arr)
        
        // preferences menu
        var menuAction1 = CAIChannelMenuDataAction("Google", "Link", "https://www.google.com", nil)
        var menuAction2 = CAIChannelMenuDataAction("Postback1", "postback", "This is postback1", nil)
        var menuAction4 = CAIChannelMenuDataAction("SAP", "Link", "https://www.sap.com", nil)
        var menuAction5 = CAIChannelMenuDataAction("Postback2", "postback", "This is postback2", nil)
        
        var menuAction3_1 = CAIChannelMenuDataAction("Youtube", "Link", "https://www.youtube.com", nil)
        var menuAction3_2 = CAIChannelMenuDataAction("Postback2", "postback", "This is postback2", nil)
        var menuAction3_4 = CAIChannelMenuDataAction("Youtube2", "Link", "https://www.youtube.com", nil)
        var menuAction3_5 = CAIChannelMenuDataAction("Postback3", "postback", "This is postback3", nil)
        
        var menuAction3_3_1 = CAIChannelMenuDataAction("Youtube2", "Link", "https://www.youtube.com", nil)
        var menuAction3_3_2 = CAIChannelMenuDataAction("Postback3", "postback", "This is postback3", nil)
        var menuAction3_3_3 = CAIChannelMenuDataAction("Youtube4", "Link", "https://www.youtube.com", nil)
        var menuAction3_3_4 = CAIChannelMenuDataAction("Postback5", "postback", "This is postback5", nil)
        var nestedActions2 = [CAIChannelMenuDataAction]()
        nestedActions2.append(menuAction3_3_2)
        nestedActions2.append(menuAction3_3_1)
        nestedActions2.append(menuAction3_3_4)
        nestedActions2.append(menuAction3_3_3)

        var menuAction3_3 = CAIChannelMenuDataAction("Nested2", "nested", nil, nestedActions2)
        
        var nestedActions = [CAIChannelMenuDataAction]()
        nestedActions.append(menuAction3_3)
        nestedActions.append(menuAction3_1)
        nestedActions.append(menuAction3_2)
        nestedActions.append(menuAction3_5)
        nestedActions.append(menuAction3_4)

        var menuAction3 = CAIChannelMenuDataAction("Nested1", "nested", nil, nestedActions)
        
        var menuActions = [CAIChannelMenuDataAction]()
        menuActions.append(menuAction2)
        menuActions.append(menuAction3)
        menuActions.append(menuAction1)
        menuActions.append(menuAction5)
        menuActions.append(menuAction4)

        var md = CAIChannelMenuData("en", menuActions)
        var pm = CAIChannelPreferencesMenuData("en", md)
        
        vm.menu = pm
        return vm
    }()
}
