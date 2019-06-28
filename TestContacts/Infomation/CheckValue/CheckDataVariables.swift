//
//  CheckDataVariables.swift
//  TestContacts
//
//  Created by Владимир Гериханов on 28/06/2019.
//  Copyright © 2019 Владимир Гериханов. All rights reserved.
//

import UIKit

extension InfoContactViewController{
    func checkDataInVariables(){
        for _ in 0...infoLabel.count + secondInfoLabel.count {
            if nameInfo == ""{
                nameInfo = "-"
            }
            else if secondNameInfo == ""{
                secondNameInfo = "-"
            }
            else if phoneInfo == ""{
                phoneInfo = "-"
            }
            else if workPhoneInfo == ""{
                workPhoneInfo = "-"
            }
            else if emailInfo == ""{
                emailInfo = "-"
            }
            else if workEmailInfo == ""{
                workEmailInfo = "-"
            }
            else if nameWorkInfo == ""{
                nameWorkInfo = "-"
            }
            else if positionInfo == ""{
                positionInfo = "-"
            }
            else if dateInfo == ""{
                dateInfo = "-"
            }
            else if notesInfo == ""{
                notesInfo = "-"
            }
        }
        
    }
}
