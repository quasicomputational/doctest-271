{-# language TemplateHaskell #-}
{-# language TypeFamilies #-}

module Example where

-- units
import Data.Metrology
import Data.Metrology.TH


declareDimension "Cost"


declareCanonicalUnit "Dollar" [t| Cost |] ( Just "USD" )


type instance DefaultUnitOfDim Cost =
  Dollar


declareDerivedUnit "Cent" [t| Dollar |] ( 1 / 100 ) ( Just "cent" )
