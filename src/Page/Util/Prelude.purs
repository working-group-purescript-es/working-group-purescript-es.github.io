module Page.Util.Prelude 
  ( module Prelude
  , module React.Basic.DOM
  , module React.Basic
  , leaf
  , (</)
  , (/>)
  , el
  , (</>)
  )
  where

import React.Basic (JSX, ReactComponent, ReactContext, Ref, consumer, contextConsumer, contextProvider, createContext, element, elementKeyed, empty, fragment, keyed, provider)
import React.Basic.DOM (CSS, a', a_, abbr', abbr_, address', address_, area', article', article_, aside', aside_, audio', audio_, b', b_, base', bdi', bdi_, bdo', bdo_, blockquote', blockquote_, body', body_, br', button, button_, canvas, canvas_, caption, caption_, cite, cite_, code, code_, col, colgroup, colgroup', createPortal, css, data'', data_, datalist', datalist_, dd', dd_, del', del_, details', details_, dfn', dfn_, dialog', dialog_, div', div_, dl', dl_, dt', dt_, em', em_, embed', fieldset', fieldset_, figcaption', figcaption_, figure', figure_, footer', footer_, form', form_, h1', h1_, h2', h2_, h3', h3_, h4', h4_, h5', h5_, h6', h6_, head', head_, header', header_, hgroup', hgroup_, hr', html', html_, i', i_, iframe', iframe_, img', input', ins', ins_, kbd', kbd_, keygen', keygen_, label', label_, legend', legend_, li', li_, link', main', main_, map', map_, mark', mark_, math', math_, menu', menu_, menuitem', menuitem_, mergeStyles, meta', meter', meter_, nav', nav_, noscript', noscript_, object', object_, ol', ol_, optgroup', optgroup_, option', option_, output', output_, p', p_, param', picture', picture_, pre', pre_, progress', progress_, q', q_, rb', rb_, rp', rp_, rt', rt_, rtc', rtc_, ruby', ruby_, s', s_, samp', samp_, script', script_, section', section_, select', select_, slot', slot_, small', small_, source', span', span_, strong', strong_, style', style_, sub', sub_, summary', summary_, sup', sup_, table', table_, tbody', tbody_, td', td_, template', template_, text, textarea', textarea_, tfoot', tfoot_, th', th_, thead', thead_, time', time_, title', title_, tr', tr_, track', u', u_, ul', ul_, var', var_, video', video_, wbr')

import Data.String

import Data.Function as DF
import Prelude (class Applicative, class Apply, class Bind, class BooleanAlgebra, class Bounded, class Category, class CommutativeRing, class Discard, class DivisionRing, class Eq, class EuclideanRing, class Field, class Functor, class HeytingAlgebra, class Monad, class Monoid, class Ord, class Ring, class Semigroup, class Semigroupoid, class Semiring, class Show, type (~>), Ordering(..), Unit, Void, absurd, add, ap, append, apply, between, bind, bottom, clamp, compare, comparing, compose, conj, const, degree, discard, disj, eq, flap, flip, gcd, identity, ifM, join, lcm, liftA1, liftM1, map, max, mempty, min, mod, mul, negate, not, notEq, one, otherwise, pure, recip, show, sub, top, unit, unless, unlessM, void, when, whenM, zero, (#), ($), ($>), (&&), (*), (*>), (+), (-), (/), (/=), (<), (<#>), (<$), (<$>), (<*), (<*>), (<<<), (<=), (<=<), (<>), (<@>), (=<<), (==), (>), (>=), (>=>), (>>=), (>>>), (||))
import Prim.Row (class Lacks)
import Record as Record
import Type.Prelude (Proxy(..))

el ∷
  ∀ props.
  Lacks "children" props ⇒
  ReactComponent { children ∷ Array JSX | props } →
  Record props → Array JSX → JSX
el x props children =
  element
    x (Record.insert (Proxy ∷ Proxy "children") children props)

infixl 5 el as </

infixr 0 DF.apply as />

leaf ∷
  ∀ props.
  Lacks "children" props ⇒
  ReactComponent { | props } →
  Record props → JSX
leaf x props = element x props

infixl 5 leaf as </>