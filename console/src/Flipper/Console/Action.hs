module Flipper.Console.Action where

import Data.Word

data ConsoleAction = Flash FilePath
                   | Install ModuleID FilePath
                   | Launch String
                   | Reset
                   | Suspend
                   | Engage
                   | Format
                   | ConsoleCall Call
                   deriving (Eq, Ord, Show)

newtype ModuleID = ModuleID { unModuleID :: [String] }
                 deriving (Eq, Ord, Show)

data Call = ButtonCall ButtonAction
          | FSCall FSAction
          | GPIOCall GPIOAction
          | LEDCall LEDAction
          | SPICall SPIAction
          | UARTCall UARTAction
          deriving (Eq, Ord, Show)

data ButtonAction = ButtonRead
                  deriving (Eq, Ord, Show)

data FSAction = FSFormat
              | FSCreateFromString String String
              | FSCreateFromFile String FilePath
              | FSRemove String
              | FSRename String String
              deriving (Eq, Ord, Show)

data GPIOAction = GPIODigitalDirection DigitalPin Direction
                | GPIODigitalRead DigitalPin
                | GPIODigitalWrite DigitalPin Bool
                | GPIOAnalogDirection AnalogPin Direction
                | GPIOAnalogRead AnalogPin
                | GPIOAnalogWrite AnalogPin Word16
                deriving (Eq, Ord, Show)

data LEDAction = LEDSetRGB RGB
               deriving (Eq, Ord, Show)

data SPIAction = SPIEnable
               | SPIDisable
               | SPIRead Int
               | SPIWriteFromString String
               | SPIWriteFromFile FilePath
               deriving (Eq, Ord, Show)

data UARTAction = UARTEnable
                | UARTDisable
                | UARTRead Int
                | UARTWriteFromString String
                | UARTWriteFromFilePath String
                deriving (Eq, Ord, Show)
