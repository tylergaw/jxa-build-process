JsOsaDAS1.001.00bplist00�Vscripto� ( f u n c t i o n ( f ) { i f ( t y p e o f   e x p o r t s = = = " o b j e c t " & & t y p e o f   m o d u l e ! = = " u n d e f i n e d " ) { m o d u l e . e x p o r t s = f ( ) } e l s e   i f ( t y p e o f   d e f i n e = = = " f u n c t i o n " & & d e f i n e . a m d ) { d e f i n e ( [ ] , f ) } e l s e { v a r   g ; i f ( t y p e o f   w i n d o w ! = = " u n d e f i n e d " ) { g = w i n d o w } e l s e   i f ( t y p e o f   g l o b a l ! = = " u n d e f i n e d " ) { g = g l o b a l } e l s e   i f ( t y p e o f   s e l f ! = = " u n d e f i n e d " ) { g = s e l f } e l s e { g = t h i s } g . a p p   =   f ( ) } } ) ( f u n c t i o n ( ) { v a r   d e f i n e , m o d u l e , e x p o r t s ; r e t u r n   ( f u n c t i o n   e ( t , n , r ) { f u n c t i o n   s ( o , u ) { i f ( ! n [ o ] ) { i f ( ! t [ o ] ) { v a r   a = t y p e o f   r e q u i r e = = " f u n c t i o n " & & r e q u i r e ; i f ( ! u & & a ) r e t u r n   a ( o , ! 0 ) ; i f ( i ) r e t u r n   i ( o , ! 0 ) ; v a r   f = n e w   E r r o r ( " C a n n o t   f i n d   m o d u l e   ' " + o + " ' " ) ; t h r o w   f . c o d e = " M O D U L E _ N O T _ F O U N D " , f } v a r   l = n [ o ] = { e x p o r t s : { } } ; t [ o ] [ 0 ] . c a l l ( l . e x p o r t s , f u n c t i o n ( e ) { v a r   n = t [ o ] [ 1 ] [ e ] ; r e t u r n   s ( n ? n : e ) } , l , l . e x p o r t s , e , t , n , r ) } r e t u r n   n [ o ] . e x p o r t s } v a r   i = t y p e o f   r e q u i r e = = " f u n c t i o n " & & r e q u i r e ; f o r ( v a r   o = 0 ; o < r . l e n g t h ; o + + ) s ( r [ o ] ) ; r e t u r n   s } ) ( { 1 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 f u n c t i o n   _ i n t e r o p R e q u i r e D e f a u l t ( o b j )   {   r e t u r n   o b j   & &   o b j . _ _ e s M o d u l e   ?   o b j   :   {   ' d e f a u l t ' :   o b j   } ;   } 
 
 v a r   _ u n d e r s c o r e   =   r e q u i r e ( ' u n d e r s c o r e ' ) ; 
 
 v a r   _ u n d e r s c o r e 2   =   _ i n t e r o p R e q u i r e D e f a u l t ( _ u n d e r s c o r e ) ; 
 
 v a r   _ s t a r d u s t   =   r e q u i r e ( ' . / s t a r d u s t ' ) ; 
 
 v a r   _ s t a r d u s t 2   =   _ i n t e r o p R e q u i r e D e f a u l t ( _ s t a r d u s t ) ; 
 
 O b j C [ ' i m p o r t ' ] ( ' C o c o a ' ) ; 
 
 v a r   a p p   =   f u n c t i o n   a p p ( )   { 
     v a r   c t r l s H e i g h t   =   8 0 ; 
     v a r   m i n W i d t h   =   4 0 0 ; 
     v a r   m i n H e i g h t   =   3 4 0 ; 
 
     O b j C . r e g i s t e r S u b c l a s s ( { 
         n a m e :   ' A p p D e l e g a t e ' , 
         m e t h o d s :   { 
             ' c l i c k ' :   { 
                 t y p e s :   [ ' v o i d ' ,   [ ' i d ' ] ] , 
                 i m p l e m e n t a t i o n :   f u n c t i o n   i m p l e m e n t a t i o n ( s e n d e r )   { 
                     v a r   p a n e l   =   $ . N S O p e n P a n e l . o p e n P a n e l ; 
                     p a n e l . t i t l e   =   ' C h o o s e   a n   I m a g e ' ; 
                     p a n e l . a l l o w e d F i l e T y p e s   =   $ ( [ ' j p g ' ,   ' p n g ' ,   ' g i f ' ] ) ; 
 
                     i f   ( p a n e l . r u n M o d a l   = =   $ . N S O K B u t t o n )   { 
                         v a r   i m a g e P a t h   =   p a n e l . U R L s . o b j e c t A t I n d e x ( 0 ) . p a t h ; 
                         v a r   i m g   =   $ . N S I m a g e . a l l o c . i n i t B y R e f e r e n c i n g F i l e ( i m a g e P a t h ) ; 
                         v a r   i m g V i e w   =   $ . N S I m a g e V i e w . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 0 ,   m a i n W i n d o w . h e i g h t ( ) ,   i m g . s i z e . w i d t h ,   i m g . s i z e . h e i g h t ) ) ; 
 
                         m a i n W i n d o w . r e s i z e ( i m g . s i z e . w i d t h   >   m i n W i d t h   ?   i m g . s i z e . w i d t h   :   m i n W i d t h ,   ( i m g . s i z e . h e i g h t   >   m i n H e i g h t   ?   i m g . s i z e . h e i g h t   :   m i n H e i g h t )   +   c t r l s H e i g h t ) ; 
 
                         i m g V i e w . s e t I m a g e ( i m g ) ; 
                         m a i n W i n d o w . e l . d i s p l a y I f N e e d e d ( ) ; 
                         m a i n W i n d o w . a p p e n d ( i m g V i e w ) . c e n t e r ( ) ; 
                     } 
                 } 
             } 
         } 
     } ) ; 
 
     v a r   a p p D e l e g a t e   =   $ . A p p D e l e g a t e . a l l o c . i n i t ; 
 
     v a r   m a i n W i n d o w   =   _ s t a r d u s t 2 [ ' d e f a u l t ' ] . w i n d o w ( { 
         t i t l e :   ' C h o o s e   a n d   D i s p l a y   I m a g e ' , 
         r e c t :   [ 0 ,   0 ,   6 0 0 ,   8 5 ] 
     } ) . d e l e g a t e ( a p p D e l e g a t e ) ; 
 
     m a i n W i n d o w . a p p e n d ( _ s t a r d u s t 2 [ ' d e f a u l t ' ] . f i e l d L a b e l ( { 
         v a l u e :   ' I m a g e :   ( j p g ,   p n g ,   o r   g i f ) ' , 
         r e c t :   [ 2 5 ,   m a i n W i n d o w . h e i g h t ( )   -   4 0 ,   2 0 0 ,   2 4 ] 
     } ) ) . a p p e n d ( _ s t a r d u s t 2 [ ' d e f a u l t ' ] . t e x t F i e l d ( { 
         e d i t a b l e :   f a l s e , 
         r e c t :   [ 2 5 ,   m a i n W i n d o w . h e i g h t ( )   -   6 0 ,   2 0 5 ,   2 4 ] 
     } ) ) . a p p e n d ( _ s t a r d u s t 2 [ ' d e f a u l t ' ] . b u t t o n ( { 
         t i t l e :   ' C h o o s e   a n   i m a g e . . . ' , 
         r e c t :   [ 2 3 0 ,   m a i n W i n d o w . h e i g h t ( )   -   6 2 ,   1 5 0 ,   2 5 ] , 
         t a r g e t :   a p p D e l e g a t e , 
         a c t i o n :   ' c l i c k ' 
     } ) ) ; 
 
     r e t u r n   { 
         a p p D e l e g a t e :   a p p D e l e g a t e , 
         m a i n W i n d o w :   m a i n W i n d o w 
     } ; 
 } ; 
 
 m o d u l e . e x p o r t s   =   a p p ( ) ; 
 
 } , { " . / s t a r d u s t " : 3 , " u n d e r s c o r e " : 2 } ] , 2 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 / /           U n d e r s c o r e . j s   1 . 8 . 3 
 / /           h t t p : / / u n d e r s c o r e j s . o r g 
 / /           ( c )   2 0 0 9 - 2 0 1 5   J e r e m y   A s h k e n a s ,   D o c u m e n t C l o u d   a n d   I n v e s t i g a t i v e   R e p o r t e r s   &   E d i t o r s 
 / /           U n d e r s c o r e   m a y   b e   f r e e l y   d i s t r i b u t e d   u n d e r   t h e   M I T   l i c e n s e . 
 
 ( f u n c t i o n ( )   { 
 
     / /   B a s e l i n e   s e t u p 
     / /   - - - - - - - - - - - - - - 
 
     / /   E s t a b l i s h   t h e   r o o t   o b j e c t ,   ` w i n d o w `   i n   t h e   b r o w s e r ,   o r   ` e x p o r t s `   o n   t h e   s e r v e r . 
     v a r   r o o t   =   t h i s ; 
 
     / /   S a v e   t h e   p r e v i o u s   v a l u e   o f   t h e   ` _ `   v a r i a b l e . 
     v a r   p r e v i o u s U n d e r s c o r e   =   r o o t . _ ; 
 
     / /   S a v e   b y t e s   i n   t h e   m i n i f i e d   ( b u t   n o t   g z i p p e d )   v e r s i o n : 
     v a r   A r r a y P r o t o   =   A r r a y . p r o t o t y p e ,   O b j P r o t o   =   O b j e c t . p r o t o t y p e ,   F u n c P r o t o   =   F u n c t i o n . p r o t o t y p e ; 
 
     / /   C r e a t e   q u i c k   r e f e r e n c e   v a r i a b l e s   f o r   s p e e d   a c c e s s   t o   c o r e   p r o t o t y p e s . 
     v a r 
         p u s h                           =   A r r a y P r o t o . p u s h , 
         s l i c e                         =   A r r a y P r o t o . s l i c e , 
         t o S t r i n g                   =   O b j P r o t o . t o S t r i n g , 
         h a s O w n P r o p e r t y       =   O b j P r o t o . h a s O w n P r o p e r t y ; 
 
     / /   A l l   * * E C M A S c r i p t   5 * *   n a t i v e   f u n c t i o n   i m p l e m e n t a t i o n s   t h a t   w e   h o p e   t o   u s e 
     / /   a r e   d e c l a r e d   h e r e . 
     v a r 
         n a t i v e I s A r r a y             =   A r r a y . i s A r r a y , 
         n a t i v e K e y s                   =   O b j e c t . k e y s , 
         n a t i v e B i n d                   =   F u n c P r o t o . b i n d , 
         n a t i v e C r e a t e               =   O b j e c t . c r e a t e ; 
 
     / /   N a k e d   f u n c t i o n   r e f e r e n c e   f o r   s u r r o g a t e - p r o t o t y p e - s w a p p i n g . 
     v a r   C t o r   =   f u n c t i o n ( ) { } ; 
 
     / /   C r e a t e   a   s a f e   r e f e r e n c e   t o   t h e   U n d e r s c o r e   o b j e c t   f o r   u s e   b e l o w . 
     v a r   _   =   f u n c t i o n ( o b j )   { 
         i f   ( o b j   i n s t a n c e o f   _ )   r e t u r n   o b j ; 
         i f   ( ! ( t h i s   i n s t a n c e o f   _ ) )   r e t u r n   n e w   _ ( o b j ) ; 
         t h i s . _ w r a p p e d   =   o b j ; 
     } ; 
 
     / /   E x p o r t   t h e   U n d e r s c o r e   o b j e c t   f o r   * * N o d e . j s * * ,   w i t h 
     / /   b a c k w a r d s - c o m p a t i b i l i t y   f o r   t h e   o l d   ` r e q u i r e ( ) `   A P I .   I f   w e ' r e   i n 
     / /   t h e   b r o w s e r ,   a d d   ` _ `   a s   a   g l o b a l   o b j e c t . 
     i f   ( t y p e o f   e x p o r t s   ! = =   ' u n d e f i n e d ' )   { 
         i f   ( t y p e o f   m o d u l e   ! = =   ' u n d e f i n e d '   & &   m o d u l e . e x p o r t s )   { 
             e x p o r t s   =   m o d u l e . e x p o r t s   =   _ ; 
         } 
         e x p o r t s . _   =   _ ; 
     }   e l s e   { 
         r o o t . _   =   _ ; 
     } 
 
     / /   C u r r e n t   v e r s i o n . 
     _ . V E R S I O N   =   ' 1 . 8 . 3 ' ; 
 
     / /   I n t e r n a l   f u n c t i o n   t h a t   r e t u r n s   a n   e f f i c i e n t   ( f o r   c u r r e n t   e n g i n e s )   v e r s i o n 
     / /   o f   t h e   p a s s e d - i n   c a l l b a c k ,   t o   b e   r e p e a t e d l y   a p p l i e d   i n   o t h e r   U n d e r s c o r e 
     / /   f u n c t i o n s . 
     v a r   o p t i m i z e C b   =   f u n c t i o n ( f u n c ,   c o n t e x t ,   a r g C o u n t )   { 
         i f   ( c o n t e x t   = = =   v o i d   0 )   r e t u r n   f u n c ; 
         s w i t c h   ( a r g C o u n t   = =   n u l l   ?   3   :   a r g C o u n t )   { 
             c a s e   1 :   r e t u r n   f u n c t i o n ( v a l u e )   { 
                 r e t u r n   f u n c . c a l l ( c o n t e x t ,   v a l u e ) ; 
             } ; 
             c a s e   2 :   r e t u r n   f u n c t i o n ( v a l u e ,   o t h e r )   { 
                 r e t u r n   f u n c . c a l l ( c o n t e x t ,   v a l u e ,   o t h e r ) ; 
             } ; 
             c a s e   3 :   r e t u r n   f u n c t i o n ( v a l u e ,   i n d e x ,   c o l l e c t i o n )   { 
                 r e t u r n   f u n c . c a l l ( c o n t e x t ,   v a l u e ,   i n d e x ,   c o l l e c t i o n ) ; 
             } ; 
             c a s e   4 :   r e t u r n   f u n c t i o n ( a c c u m u l a t o r ,   v a l u e ,   i n d e x ,   c o l l e c t i o n )   { 
                 r e t u r n   f u n c . c a l l ( c o n t e x t ,   a c c u m u l a t o r ,   v a l u e ,   i n d e x ,   c o l l e c t i o n ) ; 
             } ; 
         } 
         r e t u r n   f u n c t i o n ( )   { 
             r e t u r n   f u n c . a p p l y ( c o n t e x t ,   a r g u m e n t s ) ; 
         } ; 
     } ; 
 
     / /   A   m o s t l y - i n t e r n a l   f u n c t i o n   t o   g e n e r a t e   c a l l b a c k s   t h a t   c a n   b e   a p p l i e d 
     / /   t o   e a c h   e l e m e n t   i n   a   c o l l e c t i o n ,   r e t u r n i n g   t h e   d e s i r e d   r e s u l t      e i t h e r 
     / /   i d e n t i t y ,   a n   a r b i t r a r y   c a l l b a c k ,   a   p r o p e r t y   m a t c h e r ,   o r   a   p r o p e r t y   a c c e s s o r . 
     v a r   c b   =   f u n c t i o n ( v a l u e ,   c o n t e x t ,   a r g C o u n t )   { 
         i f   ( v a l u e   = =   n u l l )   r e t u r n   _ . i d e n t i t y ; 
         i f   ( _ . i s F u n c t i o n ( v a l u e ) )   r e t u r n   o p t i m i z e C b ( v a l u e ,   c o n t e x t ,   a r g C o u n t ) ; 
         i f   ( _ . i s O b j e c t ( v a l u e ) )   r e t u r n   _ . m a t c h e r ( v a l u e ) ; 
         r e t u r n   _ . p r o p e r t y ( v a l u e ) ; 
     } ; 
     _ . i t e r a t e e   =   f u n c t i o n ( v a l u e ,   c o n t e x t )   { 
         r e t u r n   c b ( v a l u e ,   c o n t e x t ,   I n f i n i t y ) ; 
     } ; 
 
     / /   A n   i n t e r n a l   f u n c t i o n   f o r   c r e a t i n g   a s s i g n e r   f u n c t i o n s . 
     v a r   c r e a t e A s s i g n e r   =   f u n c t i o n ( k e y s F u n c ,   u n d e f i n e d O n l y )   { 
         r e t u r n   f u n c t i o n ( o b j )   { 
             v a r   l e n g t h   =   a r g u m e n t s . l e n g t h ; 
             i f   ( l e n g t h   <   2   | |   o b j   = =   n u l l )   r e t u r n   o b j ; 
             f o r   ( v a r   i n d e x   =   1 ;   i n d e x   <   l e n g t h ;   i n d e x + + )   { 
                 v a r   s o u r c e   =   a r g u m e n t s [ i n d e x ] , 
                         k e y s   =   k e y s F u n c ( s o u r c e ) , 
                         l   =   k e y s . l e n g t h ; 
                 f o r   ( v a r   i   =   0 ;   i   <   l ;   i + + )   { 
                     v a r   k e y   =   k e y s [ i ] ; 
                     i f   ( ! u n d e f i n e d O n l y   | |   o b j [ k e y ]   = = =   v o i d   0 )   o b j [ k e y ]   =   s o u r c e [ k e y ] ; 
                 } 
             } 
             r e t u r n   o b j ; 
         } ; 
     } ; 
 
     / /   A n   i n t e r n a l   f u n c t i o n   f o r   c r e a t i n g   a   n e w   o b j e c t   t h a t   i n h e r i t s   f r o m   a n o t h e r . 
     v a r   b a s e C r e a t e   =   f u n c t i o n ( p r o t o t y p e )   { 
         i f   ( ! _ . i s O b j e c t ( p r o t o t y p e ) )   r e t u r n   { } ; 
         i f   ( n a t i v e C r e a t e )   r e t u r n   n a t i v e C r e a t e ( p r o t o t y p e ) ; 
         C t o r . p r o t o t y p e   =   p r o t o t y p e ; 
         v a r   r e s u l t   =   n e w   C t o r ; 
         C t o r . p r o t o t y p e   =   n u l l ; 
         r e t u r n   r e s u l t ; 
     } ; 
 
     v a r   p r o p e r t y   =   f u n c t i o n ( k e y )   { 
         r e t u r n   f u n c t i o n ( o b j )   { 
             r e t u r n   o b j   = =   n u l l   ?   v o i d   0   :   o b j [ k e y ] ; 
         } ; 
     } ; 
 
     / /   H e l p e r   f o r   c o l l e c t i o n   m e t h o d s   t o   d e t e r m i n e   w h e t h e r   a   c o l l e c t i o n 
     / /   s h o u l d   b e   i t e r a t e d   a s   a n   a r r a y   o r   a s   a n   o b j e c t 
     / /   R e l a t e d :   h t t p : / / p e o p l e . m o z i l l a . o r g / ~ j o r e n d o r f f / e s 6 - d r a f t . h t m l # s e c - t o l e n g t h 
     / /   A v o i d s   a   v e r y   n a s t y   i O S   8   J I T   b u g   o n   A R M - 6 4 .   # 2 0 9 4 
     v a r   M A X _ A R R A Y _ I N D E X   =   M a t h . p o w ( 2 ,   5 3 )   -   1 ; 
     v a r   g e t L e n g t h   =   p r o p e r t y ( ' l e n g t h ' ) ; 
     v a r   i s A r r a y L i k e   =   f u n c t i o n ( c o l l e c t i o n )   { 
         v a r   l e n g t h   =   g e t L e n g t h ( c o l l e c t i o n ) ; 
         r e t u r n   t y p e o f   l e n g t h   = =   ' n u m b e r '   & &   l e n g t h   > =   0   & &   l e n g t h   < =   M A X _ A R R A Y _ I N D E X ; 
     } ; 
 
     / /   C o l l e c t i o n   F u n c t i o n s 
     / /   - - - - - - - - - - - - - - - - - - - - 
 
     / /   T h e   c o r n e r s t o n e ,   a n   ` e a c h `   i m p l e m e n t a t i o n ,   a k a   ` f o r E a c h ` . 
     / /   H a n d l e s   r a w   o b j e c t s   i n   a d d i t i o n   t o   a r r a y - l i k e s .   T r e a t s   a l l 
     / /   s p a r s e   a r r a y - l i k e s   a s   i f   t h e y   w e r e   d e n s e . 
     _ . e a c h   =   _ . f o r E a c h   =   f u n c t i o n ( o b j ,   i t e r a t e e ,   c o n t e x t )   { 
         i t e r a t e e   =   o p t i m i z e C b ( i t e r a t e e ,   c o n t e x t ) ; 
         v a r   i ,   l e n g t h ; 
         i f   ( i s A r r a y L i k e ( o b j ) )   { 
             f o r   ( i   =   0 ,   l e n g t h   =   o b j . l e n g t h ;   i   <   l e n g t h ;   i + + )   { 
                 i t e r a t e e ( o b j [ i ] ,   i ,   o b j ) ; 
             } 
         }   e l s e   { 
             v a r   k e y s   =   _ . k e y s ( o b j ) ; 
             f o r   ( i   =   0 ,   l e n g t h   =   k e y s . l e n g t h ;   i   <   l e n g t h ;   i + + )   { 
                 i t e r a t e e ( o b j [ k e y s [ i ] ] ,   k e y s [ i ] ,   o b j ) ; 
             } 
         } 
         r e t u r n   o b j ; 
     } ; 
 
     / /   R e t u r n   t h e   r e s u l t s   o f   a p p l y i n g   t h e   i t e r a t e e   t o   e a c h   e l e m e n t . 
     _ . m a p   =   _ . c o l l e c t   =   f u n c t i o n ( o b j ,   i t e r a t e e ,   c o n t e x t )   { 
         i t e r a t e e   =   c b ( i t e r a t e e ,   c o n t e x t ) ; 
         v a r   k e y s   =   ! i s A r r a y L i k e ( o b j )   & &   _ . k e y s ( o b j ) , 
                 l e n g t h   =   ( k e y s   | |   o b j ) . l e n g t h , 
                 r e s u l t s   =   A r r a y ( l e n g t h ) ; 
         f o r   ( v a r   i n d e x   =   0 ;   i n d e x   <   l e n g t h ;   i n d e x + + )   { 
             v a r   c u r r e n t K e y   =   k e y s   ?   k e y s [ i n d e x ]   :   i n d e x ; 
             r e s u l t s [ i n d e x ]   =   i t e r a t e e ( o b j [ c u r r e n t K e y ] ,   c u r r e n t K e y ,   o b j ) ; 
         } 
         r e t u r n   r e s u l t s ; 
     } ; 
 
     / /   C r e a t e   a   r e d u c i n g   f u n c t i o n   i t e r a t i n g   l e f t   o r   r i g h t . 
     f u n c t i o n   c r e a t e R e d u c e ( d i r )   { 
         / /   O p t i m i z e d   i t e r a t o r   f u n c t i o n   a s   u s i n g   a r g u m e n t s . l e n g t h 
         / /   i n   t h e   m a i n   f u n c t i o n   w i l l   d e o p t i m i z e   t h e ,   s e e   # 1 9 9 1 . 
         f u n c t i o n   i t e r a t o r ( o b j ,   i t e r a t e e ,   m e m o ,   k e y s ,   i n d e x ,   l e n g t h )   { 
             f o r   ( ;   i n d e x   > =   0   & &   i n d e x   <   l e n g t h ;   i n d e x   + =   d i r )   { 
                 v a r   c u r r e n t K e y   =   k e y s   ?   k e y s [ i n d e x ]   :   i n d e x ; 
                 m e m o   =   i t e r a t e e ( m e m o ,   o b j [ c u r r e n t K e y ] ,   c u r r e n t K e y ,   o b j ) ; 
             } 
             r e t u r n   m e m o ; 
         } 
 
         r e t u r n   f u n c t i o n ( o b j ,   i t e r a t e e ,   m e m o ,   c o n t e x t )   { 
             i t e r a t e e   =   o p t i m i z e C b ( i t e r a t e e ,   c o n t e x t ,   4 ) ; 
             v a r   k e y s   =   ! i s A r r a y L i k e ( o b j )   & &   _ . k e y s ( o b j ) , 
                     l e n g t h   =   ( k e y s   | |   o b j ) . l e n g t h , 
                     i n d e x   =   d i r   >   0   ?   0   :   l e n g t h   -   1 ; 
             / /   D e t e r m i n e   t h e   i n i t i a l   v a l u e   i f   n o n e   i s   p r o v i d e d . 
             i f   ( a r g u m e n t s . l e n g t h   <   3 )   { 
                 m e m o   =   o b j [ k e y s   ?   k e y s [ i n d e x ]   :   i n d e x ] ; 
                 i n d e x   + =   d i r ; 
             } 
             r e t u r n   i t e r a t o r ( o b j ,   i t e r a t e e ,   m e m o ,   k e y s ,   i n d e x ,   l e n g t h ) ; 
         } ; 
     } 
 
     / /   * * R e d u c e * *   b u i l d s   u p   a   s i n g l e   r e s u l t   f r o m   a   l i s t   o f   v a l u e s ,   a k a   ` i n j e c t ` , 
     / /   o r   ` f o l d l ` . 
     _ . r e d u c e   =   _ . f o l d l   =   _ . i n j e c t   =   c r e a t e R e d u c e ( 1 ) ; 
 
     / /   T h e   r i g h t - a s s o c i a t i v e   v e r s i o n   o f   r e d u c e ,   a l s o   k n o w n   a s   ` f o l d r ` . 
     _ . r e d u c e R i g h t   =   _ . f o l d r   =   c r e a t e R e d u c e ( - 1 ) ; 
 
     / /   R e t u r n   t h e   f i r s t   v a l u e   w h i c h   p a s s e s   a   t r u t h   t e s t .   A l i a s e d   a s   ` d e t e c t ` . 
     _ . f i n d   =   _ . d e t e c t   =   f u n c t i o n ( o b j ,   p r e d i c a t e ,   c o n t e x t )   { 
         v a r   k e y ; 
         i f   ( i s A r r a y L i k e ( o b j ) )   { 
             k e y   =   _ . f i n d I n d e x ( o b j ,   p r e d i c a t e ,   c o n t e x t ) ; 
         }   e l s e   { 
             k e y   =   _ . f i n d K e y ( o b j ,   p r e d i c a t e ,   c o n t e x t ) ; 
         } 
         i f   ( k e y   ! = =   v o i d   0   & &   k e y   ! = =   - 1 )   r e t u r n   o b j [ k e y ] ; 
     } ; 
 
     / /   R e t u r n   a l l   t h e   e l e m e n t s   t h a t   p a s s   a   t r u t h   t e s t . 
     / /   A l i a s e d   a s   ` s e l e c t ` . 
     _ . f i l t e r   =   _ . s e l e c t   =   f u n c t i o n ( o b j ,   p r e d i c a t e ,   c o n t e x t )   { 
         v a r   r e s u l t s   =   [ ] ; 
         p r e d i c a t e   =   c b ( p r e d i c a t e ,   c o n t e x t ) ; 
         _ . e a c h ( o b j ,   f u n c t i o n ( v a l u e ,   i n d e x ,   l i s t )   { 
             i f   ( p r e d i c a t e ( v a l u e ,   i n d e x ,   l i s t ) )   r e s u l t s . p u s h ( v a l u e ) ; 
         } ) ; 
         r e t u r n   r e s u l t s ; 
     } ; 
 
     / /   R e t u r n   a l l   t h e   e l e m e n t s   f o r   w h i c h   a   t r u t h   t e s t   f a i l s . 
     _ . r e j e c t   =   f u n c t i o n ( o b j ,   p r e d i c a t e ,   c o n t e x t )   { 
         r e t u r n   _ . f i l t e r ( o b j ,   _ . n e g a t e ( c b ( p r e d i c a t e ) ) ,   c o n t e x t ) ; 
     } ; 
 
     / /   D e t e r m i n e   w h e t h e r   a l l   o f   t h e   e l e m e n t s   m a t c h   a   t r u t h   t e s t . 
     / /   A l i a s e d   a s   ` a l l ` . 
     _ . e v e r y   =   _ . a l l   =   f u n c t i o n ( o b j ,   p r e d i c a t e ,   c o n t e x t )   { 
         p r e d i c a t e   =   c b ( p r e d i c a t e ,   c o n t e x t ) ; 
         v a r   k e y s   =   ! i s A r r a y L i k e ( o b j )   & &   _ . k e y s ( o b j ) , 
                 l e n g t h   =   ( k e y s   | |   o b j ) . l e n g t h ; 
         f o r   ( v a r   i n d e x   =   0 ;   i n d e x   <   l e n g t h ;   i n d e x + + )   { 
             v a r   c u r r e n t K e y   =   k e y s   ?   k e y s [ i n d e x ]   :   i n d e x ; 
             i f   ( ! p r e d i c a t e ( o b j [ c u r r e n t K e y ] ,   c u r r e n t K e y ,   o b j ) )   r e t u r n   f a l s e ; 
         } 
         r e t u r n   t r u e ; 
     } ; 
 
     / /   D e t e r m i n e   i f   a t   l e a s t   o n e   e l e m e n t   i n   t h e   o b j e c t   m a t c h e s   a   t r u t h   t e s t . 
     / /   A l i a s e d   a s   ` a n y ` . 
     _ . s o m e   =   _ . a n y   =   f u n c t i o n ( o b j ,   p r e d i c a t e ,   c o n t e x t )   { 
         p r e d i c a t e   =   c b ( p r e d i c a t e ,   c o n t e x t ) ; 
         v a r   k e y s   =   ! i s A r r a y L i k e ( o b j )   & &   _ . k e y s ( o b j ) , 
                 l e n g t h   =   ( k e y s   | |   o b j ) . l e n g t h ; 
         f o r   ( v a r   i n d e x   =   0 ;   i n d e x   <   l e n g t h ;   i n d e x + + )   { 
             v a r   c u r r e n t K e y   =   k e y s   ?   k e y s [ i n d e x ]   :   i n d e x ; 
             i f   ( p r e d i c a t e ( o b j [ c u r r e n t K e y ] ,   c u r r e n t K e y ,   o b j ) )   r e t u r n   t r u e ; 
         } 
         r e t u r n   f a l s e ; 
     } ; 
 
     / /   D e t e r m i n e   i f   t h e   a r r a y   o r   o b j e c t   c o n t a i n s   a   g i v e n   i t e m   ( u s i n g   ` = = = ` ) . 
     / /   A l i a s e d   a s   ` i n c l u d e s `   a n d   ` i n c l u d e ` . 
     _ . c o n t a i n s   =   _ . i n c l u d e s   =   _ . i n c l u d e   =   f u n c t i o n ( o b j ,   i t e m ,   f r o m I n d e x ,   g u a r d )   { 
         i f   ( ! i s A r r a y L i k e ( o b j ) )   o b j   =   _ . v a l u e s ( o b j ) ; 
         i f   ( t y p e o f   f r o m I n d e x   ! =   ' n u m b e r '   | |   g u a r d )   f r o m I n d e x   =   0 ; 
         r e t u r n   _ . i n d e x O f ( o b j ,   i t e m ,   f r o m I n d e x )   > =   0 ; 
     } ; 
 
     / /   I n v o k e   a   m e t h o d   ( w i t h   a r g u m e n t s )   o n   e v e r y   i t e m   i n   a   c o l l e c t i o n . 
     _ . i n v o k e   =   f u n c t i o n ( o b j ,   m e t h o d )   { 
         v a r   a r g s   =   s l i c e . c a l l ( a r g u m e n t s ,   2 ) ; 
         v a r   i s F u n c   =   _ . i s F u n c t i o n ( m e t h o d ) ; 
         r e t u r n   _ . m a p ( o b j ,   f u n c t i o n ( v a l u e )   { 
             v a r   f u n c   =   i s F u n c   ?   m e t h o d   :   v a l u e [ m e t h o d ] ; 
             r e t u r n   f u n c   = =   n u l l   ?   f u n c   :   f u n c . a p p l y ( v a l u e ,   a r g s ) ; 
         } ) ; 
     } ; 
 
     / /   C o n v e n i e n c e   v e r s i o n   o f   a   c o m m o n   u s e   c a s e   o f   ` m a p ` :   f e t c h i n g   a   p r o p e r t y . 
     _ . p l u c k   =   f u n c t i o n ( o b j ,   k e y )   { 
         r e t u r n   _ . m a p ( o b j ,   _ . p r o p e r t y ( k e y ) ) ; 
     } ; 
 
     / /   C o n v e n i e n c e   v e r s i o n   o f   a   c o m m o n   u s e   c a s e   o f   ` f i l t e r ` :   s e l e c t i n g   o n l y   o b j e c t s 
     / /   c o n t a i n i n g   s p e c i f i c   ` k e y : v a l u e `   p a i r s . 
     _ . w h e r e   =   f u n c t i o n ( o b j ,   a t t r s )   { 
         r e t u r n   _ . f i l t e r ( o b j ,   _ . m a t c h e r ( a t t r s ) ) ; 
     } ; 
 
     / /   C o n v e n i e n c e   v e r s i o n   o f   a   c o m m o n   u s e   c a s e   o f   ` f i n d ` :   g e t t i n g   t h e   f i r s t   o b j e c t 
     / /   c o n t a i n i n g   s p e c i f i c   ` k e y : v a l u e `   p a i r s . 
     _ . f i n d W h e r e   =   f u n c t i o n ( o b j ,   a t t r s )   { 
         r e t u r n   _ . f i n d ( o b j ,   _ . m a t c h e r ( a t t r s ) ) ; 
     } ; 
 
     / /   R e t u r n   t h e   m a x i m u m   e l e m e n t   ( o r   e l e m e n t - b a s e d   c o m p u t a t i o n ) . 
     _ . m a x   =   f u n c t i o n ( o b j ,   i t e r a t e e ,   c o n t e x t )   { 
         v a r   r e s u l t   =   - I n f i n i t y ,   l a s t C o m p u t e d   =   - I n f i n i t y , 
                 v a l u e ,   c o m p u t e d ; 
         i f   ( i t e r a t e e   = =   n u l l   & &   o b j   ! =   n u l l )   { 
             o b j   =   i s A r r a y L i k e ( o b j )   ?   o b j   :   _ . v a l u e s ( o b j ) ; 
             f o r   ( v a r   i   =   0 ,   l e n g t h   =   o b j . l e n g t h ;   i   <   l e n g t h ;   i + + )   { 
                 v a l u e   =   o b j [ i ] ; 
                 i f   ( v a l u e   >   r e s u l t )   { 
                     r e s u l t   =   v a l u e ; 
                 } 
             } 
         }   e l s e   { 
             i t e r a t e e   =   c b ( i t e r a t e e ,   c o n t e x t ) ; 
             _ . e a c h ( o b j ,   f u n c t i o n ( v a l u e ,   i n d e x ,   l i s t )   { 
                 c o m p u t e d   =   i t e r a t e e ( v a l u e ,   i n d e x ,   l i s t ) ; 
                 i f   ( c o m p u t e d   >   l a s t C o m p u t e d   | |   c o m p u t e d   = = =   - I n f i n i t y   & &   r e s u l t   = = =   - I n f i n i t y )   { 
                     r e s u l t   =   v a l u e ; 
                     l a s t C o m p u t e d   =   c o m p u t e d ; 
                 } 
             } ) ; 
         } 
         r e t u r n   r e s u l t ; 
     } ; 
 
     / /   R e t u r n   t h e   m i n i m u m   e l e m e n t   ( o r   e l e m e n t - b a s e d   c o m p u t a t i o n ) . 
     _ . m i n   =   f u n c t i o n ( o b j ,   i t e r a t e e ,   c o n t e x t )   { 
         v a r   r e s u l t   =   I n f i n i t y ,   l a s t C o m p u t e d   =   I n f i n i t y , 
                 v a l u e ,   c o m p u t e d ; 
         i f   ( i t e r a t e e   = =   n u l l   & &   o b j   ! =   n u l l )   { 
             o b j   =   i s A r r a y L i k e ( o b j )   ?   o b j   :   _ . v a l u e s ( o b j ) ; 
             f o r   ( v a r   i   =   0 ,   l e n g t h   =   o b j . l e n g t h ;   i   <   l e n g t h ;   i + + )   { 
                 v a l u e   =   o b j [ i ] ; 
                 i f   ( v a l u e   <   r e s u l t )   { 
                     r e s u l t   =   v a l u e ; 
                 } 
             } 
         }   e l s e   { 
             i t e r a t e e   =   c b ( i t e r a t e e ,   c o n t e x t ) ; 
             _ . e a c h ( o b j ,   f u n c t i o n ( v a l u e ,   i n d e x ,   l i s t )   { 
                 c o m p u t e d   =   i t e r a t e e ( v a l u e ,   i n d e x ,   l i s t ) ; 
                 i f   ( c o m p u t e d   <   l a s t C o m p u t e d   | |   c o m p u t e d   = = =   I n f i n i t y   & &   r e s u l t   = = =   I n f i n i t y )   { 
                     r e s u l t   =   v a l u e ; 
                     l a s t C o m p u t e d   =   c o m p u t e d ; 
                 } 
             } ) ; 
         } 
         r e t u r n   r e s u l t ; 
     } ; 
 
     / /   S h u f f l e   a   c o l l e c t i o n ,   u s i n g   t h e   m o d e r n   v e r s i o n   o f   t h e 
     / /   [ F i s h e r - Y a t e s   s h u f f l e ] ( h t t p : / / e n . w i k i p e d i a . o r g / w i k i / F i s h e r  Y a t e s _ s h u f f l e ) . 
     _ . s h u f f l e   =   f u n c t i o n ( o b j )   { 
         v a r   s e t   =   i s A r r a y L i k e ( o b j )   ?   o b j   :   _ . v a l u e s ( o b j ) ; 
         v a r   l e n g t h   =   s e t . l e n g t h ; 
         v a r   s h u f f l e d   =   A r r a y ( l e n g t h ) ; 
         f o r   ( v a r   i n d e x   =   0 ,   r a n d ;   i n d e x   <   l e n g t h ;   i n d e x + + )   { 
             r a n d   =   _ . r a n d o m ( 0 ,   i n d e x ) ; 
             i f   ( r a n d   ! = =   i n d e x )   s h u f f l e d [ i n d e x ]   =   s h u f f l e d [ r a n d ] ; 
             s h u f f l e d [ r a n d ]   =   s e t [ i n d e x ] ; 
         } 
         r e t u r n   s h u f f l e d ; 
     } ; 
 
     / /   S a m p l e   * * n * *   r a n d o m   v a l u e s   f r o m   a   c o l l e c t i o n . 
     / /   I f   * * n * *   i s   n o t   s p e c i f i e d ,   r e t u r n s   a   s i n g l e   r a n d o m   e l e m e n t . 
     / /   T h e   i n t e r n a l   ` g u a r d `   a r g u m e n t   a l l o w s   i t   t o   w o r k   w i t h   ` m a p ` . 
     _ . s a m p l e   =   f u n c t i o n ( o b j ,   n ,   g u a r d )   { 
         i f   ( n   = =   n u l l   | |   g u a r d )   { 
             i f   ( ! i s A r r a y L i k e ( o b j ) )   o b j   =   _ . v a l u e s ( o b j ) ; 
             r e t u r n   o b j [ _ . r a n d o m ( o b j . l e n g t h   -   1 ) ] ; 
         } 
         r e t u r n   _ . s h u f f l e ( o b j ) . s l i c e ( 0 ,   M a t h . m a x ( 0 ,   n ) ) ; 
     } ; 
 
     / /   S o r t   t h e   o b j e c t ' s   v a l u e s   b y   a   c r i t e r i o n   p r o d u c e d   b y   a n   i t e r a t e e . 
     _ . s o r t B y   =   f u n c t i o n ( o b j ,   i t e r a t e e ,   c o n t e x t )   { 
         i t e r a t e e   =   c b ( i t e r a t e e ,   c o n t e x t ) ; 
         r e t u r n   _ . p l u c k ( _ . m a p ( o b j ,   f u n c t i o n ( v a l u e ,   i n d e x ,   l i s t )   { 
             r e t u r n   { 
                 v a l u e :   v a l u e , 
                 i n d e x :   i n d e x , 
                 c r i t e r i a :   i t e r a t e e ( v a l u e ,   i n d e x ,   l i s t ) 
             } ; 
         } ) . s o r t ( f u n c t i o n ( l e f t ,   r i g h t )   { 
             v a r   a   =   l e f t . c r i t e r i a ; 
             v a r   b   =   r i g h t . c r i t e r i a ; 
             i f   ( a   ! = =   b )   { 
                 i f   ( a   >   b   | |   a   = = =   v o i d   0 )   r e t u r n   1 ; 
                 i f   ( a   <   b   | |   b   = = =   v o i d   0 )   r e t u r n   - 1 ; 
             } 
             r e t u r n   l e f t . i n d e x   -   r i g h t . i n d e x ; 
         } ) ,   ' v a l u e ' ) ; 
     } ; 
 
     / /   A n   i n t e r n a l   f u n c t i o n   u s e d   f o r   a g g r e g a t e   " g r o u p   b y "   o p e r a t i o n s . 
     v a r   g r o u p   =   f u n c t i o n ( b e h a v i o r )   { 
         r e t u r n   f u n c t i o n ( o b j ,   i t e r a t e e ,   c o n t e x t )   { 
             v a r   r e s u l t   =   { } ; 
             i t e r a t e e   =   c b ( i t e r a t e e ,   c o n t e x t ) ; 
             _ . e a c h ( o b j ,   f u n c t i o n ( v a l u e ,   i n d e x )   { 
                 v a r   k e y   =   i t e r a t e e ( v a l u e ,   i n d e x ,   o b j ) ; 
                 b e h a v i o r ( r e s u l t ,   v a l u e ,   k e y ) ; 
             } ) ; 
             r e t u r n   r e s u l t ; 
         } ; 
     } ; 
 
     / /   G r o u p s   t h e   o b j e c t ' s   v a l u e s   b y   a   c r i t e r i o n .   P a s s   e i t h e r   a   s t r i n g   a t t r i b u t e 
     / /   t o   g r o u p   b y ,   o r   a   f u n c t i o n   t h a t   r e t u r n s   t h e   c r i t e r i o n . 
     _ . g r o u p B y   =   g r o u p ( f u n c t i o n ( r e s u l t ,   v a l u e ,   k e y )   { 
         i f   ( _ . h a s ( r e s u l t ,   k e y ) )   r e s u l t [ k e y ] . p u s h ( v a l u e ) ;   e l s e   r e s u l t [ k e y ]   =   [ v a l u e ] ; 
     } ) ; 
 
     / /   I n d e x e s   t h e   o b j e c t ' s   v a l u e s   b y   a   c r i t e r i o n ,   s i m i l a r   t o   ` g r o u p B y ` ,   b u t   f o r 
     / /   w h e n   y o u   k n o w   t h a t   y o u r   i n d e x   v a l u e s   w i l l   b e   u n i q u e . 
     _ . i n d e x B y   =   g r o u p ( f u n c t i o n ( r e s u l t ,   v a l u e ,   k e y )   { 
         r e s u l t [ k e y ]   =   v a l u e ; 
     } ) ; 
 
     / /   C o u n t s   i n s t a n c e s   o f   a n   o b j e c t   t h a t   g r o u p   b y   a   c e r t a i n   c r i t e r i o n .   P a s s 
     / /   e i t h e r   a   s t r i n g   a t t r i b u t e   t o   c o u n t   b y ,   o r   a   f u n c t i o n   t h a t   r e t u r n s   t h e 
     / /   c r i t e r i o n . 
     _ . c o u n t B y   =   g r o u p ( f u n c t i o n ( r e s u l t ,   v a l u e ,   k e y )   { 
         i f   ( _ . h a s ( r e s u l t ,   k e y ) )   r e s u l t [ k e y ] + + ;   e l s e   r e s u l t [ k e y ]   =   1 ; 
     } ) ; 
 
     / /   S a f e l y   c r e a t e   a   r e a l ,   l i v e   a r r a y   f r o m   a n y t h i n g   i t e r a b l e . 
     _ . t o A r r a y   =   f u n c t i o n ( o b j )   { 
         i f   ( ! o b j )   r e t u r n   [ ] ; 
         i f   ( _ . i s A r r a y ( o b j ) )   r e t u r n   s l i c e . c a l l ( o b j ) ; 
         i f   ( i s A r r a y L i k e ( o b j ) )   r e t u r n   _ . m a p ( o b j ,   _ . i d e n t i t y ) ; 
         r e t u r n   _ . v a l u e s ( o b j ) ; 
     } ; 
 
     / /   R e t u r n   t h e   n u m b e r   o f   e l e m e n t s   i n   a n   o b j e c t . 
     _ . s i z e   =   f u n c t i o n ( o b j )   { 
         i f   ( o b j   = =   n u l l )   r e t u r n   0 ; 
         r e t u r n   i s A r r a y L i k e ( o b j )   ?   o b j . l e n g t h   :   _ . k e y s ( o b j ) . l e n g t h ; 
     } ; 
 
     / /   S p l i t   a   c o l l e c t i o n   i n t o   t w o   a r r a y s :   o n e   w h o s e   e l e m e n t s   a l l   s a t i s f y   t h e   g i v e n 
     / /   p r e d i c a t e ,   a n d   o n e   w h o s e   e l e m e n t s   a l l   d o   n o t   s a t i s f y   t h e   p r e d i c a t e . 
     _ . p a r t i t i o n   =   f u n c t i o n ( o b j ,   p r e d i c a t e ,   c o n t e x t )   { 
         p r e d i c a t e   =   c b ( p r e d i c a t e ,   c o n t e x t ) ; 
         v a r   p a s s   =   [ ] ,   f a i l   =   [ ] ; 
         _ . e a c h ( o b j ,   f u n c t i o n ( v a l u e ,   k e y ,   o b j )   { 
             ( p r e d i c a t e ( v a l u e ,   k e y ,   o b j )   ?   p a s s   :   f a i l ) . p u s h ( v a l u e ) ; 
         } ) ; 
         r e t u r n   [ p a s s ,   f a i l ] ; 
     } ; 
 
     / /   A r r a y   F u n c t i o n s 
     / /   - - - - - - - - - - - - - - - 
 
     / /   G e t   t h e   f i r s t   e l e m e n t   o f   a n   a r r a y .   P a s s i n g   * * n * *   w i l l   r e t u r n   t h e   f i r s t   N 
     / /   v a l u e s   i n   t h e   a r r a y .   A l i a s e d   a s   ` h e a d `   a n d   ` t a k e ` .   T h e   * * g u a r d * *   c h e c k 
     / /   a l l o w s   i t   t o   w o r k   w i t h   ` _ . m a p ` . 
     _ . f i r s t   =   _ . h e a d   =   _ . t a k e   =   f u n c t i o n ( a r r a y ,   n ,   g u a r d )   { 
         i f   ( a r r a y   = =   n u l l )   r e t u r n   v o i d   0 ; 
         i f   ( n   = =   n u l l   | |   g u a r d )   r e t u r n   a r r a y [ 0 ] ; 
         r e t u r n   _ . i n i t i a l ( a r r a y ,   a r r a y . l e n g t h   -   n ) ; 
     } ; 
 
     / /   R e t u r n s   e v e r y t h i n g   b u t   t h e   l a s t   e n t r y   o f   t h e   a r r a y .   E s p e c i a l l y   u s e f u l   o n 
     / /   t h e   a r g u m e n t s   o b j e c t .   P a s s i n g   * * n * *   w i l l   r e t u r n   a l l   t h e   v a l u e s   i n 
     / /   t h e   a r r a y ,   e x c l u d i n g   t h e   l a s t   N . 
     _ . i n i t i a l   =   f u n c t i o n ( a r r a y ,   n ,   g u a r d )   { 
         r e t u r n   s l i c e . c a l l ( a r r a y ,   0 ,   M a t h . m a x ( 0 ,   a r r a y . l e n g t h   -   ( n   = =   n u l l   | |   g u a r d   ?   1   :   n ) ) ) ; 
     } ; 
 
     / /   G e t   t h e   l a s t   e l e m e n t   o f   a n   a r r a y .   P a s s i n g   * * n * *   w i l l   r e t u r n   t h e   l a s t   N 
     / /   v a l u e s   i n   t h e   a r r a y . 
     _ . l a s t   =   f u n c t i o n ( a r r a y ,   n ,   g u a r d )   { 
         i f   ( a r r a y   = =   n u l l )   r e t u r n   v o i d   0 ; 
         i f   ( n   = =   n u l l   | |   g u a r d )   r e t u r n   a r r a y [ a r r a y . l e n g t h   -   1 ] ; 
         r e t u r n   _ . r e s t ( a r r a y ,   M a t h . m a x ( 0 ,   a r r a y . l e n g t h   -   n ) ) ; 
     } ; 
 
     / /   R e t u r n s   e v e r y t h i n g   b u t   t h e   f i r s t   e n t r y   o f   t h e   a r r a y .   A l i a s e d   a s   ` t a i l `   a n d   ` d r o p ` . 
     / /   E s p e c i a l l y   u s e f u l   o n   t h e   a r g u m e n t s   o b j e c t .   P a s s i n g   a n   * * n * *   w i l l   r e t u r n 
     / /   t h e   r e s t   N   v a l u e s   i n   t h e   a r r a y . 
     _ . r e s t   =   _ . t a i l   =   _ . d r o p   =   f u n c t i o n ( a r r a y ,   n ,   g u a r d )   { 
         r e t u r n   s l i c e . c a l l ( a r r a y ,   n   = =   n u l l   | |   g u a r d   ?   1   :   n ) ; 
     } ; 
 
     / /   T r i m   o u t   a l l   f a l s y   v a l u e s   f r o m   a n   a r r a y . 
     _ . c o m p a c t   =   f u n c t i o n ( a r r a y )   { 
         r e t u r n   _ . f i l t e r ( a r r a y ,   _ . i d e n t i t y ) ; 
     } ; 
 
     / /   I n t e r n a l   i m p l e m e n t a t i o n   o f   a   r e c u r s i v e   ` f l a t t e n `   f u n c t i o n . 
     v a r   f l a t t e n   =   f u n c t i o n ( i n p u t ,   s h a l l o w ,   s t r i c t ,   s t a r t I n d e x )   { 
         v a r   o u t p u t   =   [ ] ,   i d x   =   0 ; 
         f o r   ( v a r   i   =   s t a r t I n d e x   | |   0 ,   l e n g t h   =   g e t L e n g t h ( i n p u t ) ;   i   <   l e n g t h ;   i + + )   { 
             v a r   v a l u e   =   i n p u t [ i ] ; 
             i f   ( i s A r r a y L i k e ( v a l u e )   & &   ( _ . i s A r r a y ( v a l u e )   | |   _ . i s A r g u m e n t s ( v a l u e ) ) )   { 
                 / / f l a t t e n   c u r r e n t   l e v e l   o f   a r r a y   o r   a r g u m e n t s   o b j e c t 
                 i f   ( ! s h a l l o w )   v a l u e   =   f l a t t e n ( v a l u e ,   s h a l l o w ,   s t r i c t ) ; 
                 v a r   j   =   0 ,   l e n   =   v a l u e . l e n g t h ; 
                 o u t p u t . l e n g t h   + =   l e n ; 
                 w h i l e   ( j   <   l e n )   { 
                     o u t p u t [ i d x + + ]   =   v a l u e [ j + + ] ; 
                 } 
             }   e l s e   i f   ( ! s t r i c t )   { 
                 o u t p u t [ i d x + + ]   =   v a l u e ; 
             } 
         } 
         r e t u r n   o u t p u t ; 
     } ; 
 
     / /   F l a t t e n   o u t   a n   a r r a y ,   e i t h e r   r e c u r s i v e l y   ( b y   d e f a u l t ) ,   o r   j u s t   o n e   l e v e l . 
     _ . f l a t t e n   =   f u n c t i o n ( a r r a y ,   s h a l l o w )   { 
         r e t u r n   f l a t t e n ( a r r a y ,   s h a l l o w ,   f a l s e ) ; 
     } ; 
 
     / /   R e t u r n   a   v e r s i o n   o f   t h e   a r r a y   t h a t   d o e s   n o t   c o n t a i n   t h e   s p e c i f i e d   v a l u e ( s ) . 
     _ . w i t h o u t   =   f u n c t i o n ( a r r a y )   { 
         r e t u r n   _ . d i f f e r e n c e ( a r r a y ,   s l i c e . c a l l ( a r g u m e n t s ,   1 ) ) ; 
     } ; 
 
     / /   P r o d u c e   a   d u p l i c a t e - f r e e   v e r s i o n   o f   t h e   a r r a y .   I f   t h e   a r r a y   h a s   a l r e a d y 
     / /   b e e n   s o r t e d ,   y o u   h a v e   t h e   o p t i o n   o f   u s i n g   a   f a s t e r   a l g o r i t h m . 
     / /   A l i a s e d   a s   ` u n i q u e ` . 
     _ . u n i q   =   _ . u n i q u e   =   f u n c t i o n ( a r r a y ,   i s S o r t e d ,   i t e r a t e e ,   c o n t e x t )   { 
         i f   ( ! _ . i s B o o l e a n ( i s S o r t e d ) )   { 
             c o n t e x t   =   i t e r a t e e ; 
             i t e r a t e e   =   i s S o r t e d ; 
             i s S o r t e d   =   f a l s e ; 
         } 
         i f   ( i t e r a t e e   ! =   n u l l )   i t e r a t e e   =   c b ( i t e r a t e e ,   c o n t e x t ) ; 
         v a r   r e s u l t   =   [ ] ; 
         v a r   s e e n   =   [ ] ; 
         f o r   ( v a r   i   =   0 ,   l e n g t h   =   g e t L e n g t h ( a r r a y ) ;   i   <   l e n g t h ;   i + + )   { 
             v a r   v a l u e   =   a r r a y [ i ] , 
                     c o m p u t e d   =   i t e r a t e e   ?   i t e r a t e e ( v a l u e ,   i ,   a r r a y )   :   v a l u e ; 
             i f   ( i s S o r t e d )   { 
                 i f   ( ! i   | |   s e e n   ! = =   c o m p u t e d )   r e s u l t . p u s h ( v a l u e ) ; 
                 s e e n   =   c o m p u t e d ; 
             }   e l s e   i f   ( i t e r a t e e )   { 
                 i f   ( ! _ . c o n t a i n s ( s e e n ,   c o m p u t e d ) )   { 
                     s e e n . p u s h ( c o m p u t e d ) ; 
                     r e s u l t . p u s h ( v a l u e ) ; 
                 } 
             }   e l s e   i f   ( ! _ . c o n t a i n s ( r e s u l t ,   v a l u e ) )   { 
                 r e s u l t . p u s h ( v a l u e ) ; 
             } 
         } 
         r e t u r n   r e s u l t ; 
     } ; 
 
     / /   P r o d u c e   a n   a r r a y   t h a t   c o n t a i n s   t h e   u n i o n :   e a c h   d i s t i n c t   e l e m e n t   f r o m   a l l   o f 
     / /   t h e   p a s s e d - i n   a r r a y s . 
     _ . u n i o n   =   f u n c t i o n ( )   { 
         r e t u r n   _ . u n i q ( f l a t t e n ( a r g u m e n t s ,   t r u e ,   t r u e ) ) ; 
     } ; 
 
     / /   P r o d u c e   a n   a r r a y   t h a t   c o n t a i n s   e v e r y   i t e m   s h a r e d   b e t w e e n   a l l   t h e 
     / /   p a s s e d - i n   a r r a y s . 
     _ . i n t e r s e c t i o n   =   f u n c t i o n ( a r r a y )   { 
         v a r   r e s u l t   =   [ ] ; 
         v a r   a r g s L e n g t h   =   a r g u m e n t s . l e n g t h ; 
         f o r   ( v a r   i   =   0 ,   l e n g t h   =   g e t L e n g t h ( a r r a y ) ;   i   <   l e n g t h ;   i + + )   { 
             v a r   i t e m   =   a r r a y [ i ] ; 
             i f   ( _ . c o n t a i n s ( r e s u l t ,   i t e m ) )   c o n t i n u e ; 
             f o r   ( v a r   j   =   1 ;   j   <   a r g s L e n g t h ;   j + + )   { 
                 i f   ( ! _ . c o n t a i n s ( a r g u m e n t s [ j ] ,   i t e m ) )   b r e a k ; 
             } 
             i f   ( j   = = =   a r g s L e n g t h )   r e s u l t . p u s h ( i t e m ) ; 
         } 
         r e t u r n   r e s u l t ; 
     } ; 
 
     / /   T a k e   t h e   d i f f e r e n c e   b e t w e e n   o n e   a r r a y   a n d   a   n u m b e r   o f   o t h e r   a r r a y s . 
     / /   O n l y   t h e   e l e m e n t s   p r e s e n t   i n   j u s t   t h e   f i r s t   a r r a y   w i l l   r e m a i n . 
     _ . d i f f e r e n c e   =   f u n c t i o n ( a r r a y )   { 
         v a r   r e s t   =   f l a t t e n ( a r g u m e n t s ,   t r u e ,   t r u e ,   1 ) ; 
         r e t u r n   _ . f i l t e r ( a r r a y ,   f u n c t i o n ( v a l u e ) { 
             r e t u r n   ! _ . c o n t a i n s ( r e s t ,   v a l u e ) ; 
         } ) ; 
     } ; 
 
     / /   Z i p   t o g e t h e r   m u l t i p l e   l i s t s   i n t o   a   s i n g l e   a r r a y   - -   e l e m e n t s   t h a t   s h a r e 
     / /   a n   i n d e x   g o   t o g e t h e r . 
     _ . z i p   =   f u n c t i o n ( )   { 
         r e t u r n   _ . u n z i p ( a r g u m e n t s ) ; 
     } ; 
 
     / /   C o m p l e m e n t   o f   _ . z i p .   U n z i p   a c c e p t s   a n   a r r a y   o f   a r r a y s   a n d   g r o u p s 
     / /   e a c h   a r r a y ' s   e l e m e n t s   o n   s h a r e d   i n d i c e s 
     _ . u n z i p   =   f u n c t i o n ( a r r a y )   { 
         v a r   l e n g t h   =   a r r a y   & &   _ . m a x ( a r r a y ,   g e t L e n g t h ) . l e n g t h   | |   0 ; 
         v a r   r e s u l t   =   A r r a y ( l e n g t h ) ; 
 
         f o r   ( v a r   i n d e x   =   0 ;   i n d e x   <   l e n g t h ;   i n d e x + + )   { 
             r e s u l t [ i n d e x ]   =   _ . p l u c k ( a r r a y ,   i n d e x ) ; 
         } 
         r e t u r n   r e s u l t ; 
     } ; 
 
     / /   C o n v e r t s   l i s t s   i n t o   o b j e c t s .   P a s s   e i t h e r   a   s i n g l e   a r r a y   o f   ` [ k e y ,   v a l u e ] ` 
     / /   p a i r s ,   o r   t w o   p a r a l l e l   a r r a y s   o f   t h e   s a m e   l e n g t h   - -   o n e   o f   k e y s ,   a n d   o n e   o f 
     / /   t h e   c o r r e s p o n d i n g   v a l u e s . 
     _ . o b j e c t   =   f u n c t i o n ( l i s t ,   v a l u e s )   { 
         v a r   r e s u l t   =   { } ; 
         f o r   ( v a r   i   =   0 ,   l e n g t h   =   g e t L e n g t h ( l i s t ) ;   i   <   l e n g t h ;   i + + )   { 
             i f   ( v a l u e s )   { 
                 r e s u l t [ l i s t [ i ] ]   =   v a l u e s [ i ] ; 
             }   e l s e   { 
                 r e s u l t [ l i s t [ i ] [ 0 ] ]   =   l i s t [ i ] [ 1 ] ; 
             } 
         } 
         r e t u r n   r e s u l t ; 
     } ; 
 
     / /   G e n e r a t o r   f u n c t i o n   t o   c r e a t e   t h e   f i n d I n d e x   a n d   f i n d L a s t I n d e x   f u n c t i o n s 
     f u n c t i o n   c r e a t e P r e d i c a t e I n d e x F i n d e r ( d i r )   { 
         r e t u r n   f u n c t i o n ( a r r a y ,   p r e d i c a t e ,   c o n t e x t )   { 
             p r e d i c a t e   =   c b ( p r e d i c a t e ,   c o n t e x t ) ; 
             v a r   l e n g t h   =   g e t L e n g t h ( a r r a y ) ; 
             v a r   i n d e x   =   d i r   >   0   ?   0   :   l e n g t h   -   1 ; 
             f o r   ( ;   i n d e x   > =   0   & &   i n d e x   <   l e n g t h ;   i n d e x   + =   d i r )   { 
                 i f   ( p r e d i c a t e ( a r r a y [ i n d e x ] ,   i n d e x ,   a r r a y ) )   r e t u r n   i n d e x ; 
             } 
             r e t u r n   - 1 ; 
         } ; 
     } 
 
     / /   R e t u r n s   t h e   f i r s t   i n d e x   o n   a n   a r r a y - l i k e   t h a t   p a s s e s   a   p r e d i c a t e   t e s t 
     _ . f i n d I n d e x   =   c r e a t e P r e d i c a t e I n d e x F i n d e r ( 1 ) ; 
     _ . f i n d L a s t I n d e x   =   c r e a t e P r e d i c a t e I n d e x F i n d e r ( - 1 ) ; 
 
     / /   U s e   a   c o m p a r a t o r   f u n c t i o n   t o   f i g u r e   o u t   t h e   s m a l l e s t   i n d e x   a t   w h i c h 
     / /   a n   o b j e c t   s h o u l d   b e   i n s e r t e d   s o   a s   t o   m a i n t a i n   o r d e r .   U s e s   b i n a r y   s e a r c h . 
     _ . s o r t e d I n d e x   =   f u n c t i o n ( a r r a y ,   o b j ,   i t e r a t e e ,   c o n t e x t )   { 
         i t e r a t e e   =   c b ( i t e r a t e e ,   c o n t e x t ,   1 ) ; 
         v a r   v a l u e   =   i t e r a t e e ( o b j ) ; 
         v a r   l o w   =   0 ,   h i g h   =   g e t L e n g t h ( a r r a y ) ; 
         w h i l e   ( l o w   <   h i g h )   { 
             v a r   m i d   =   M a t h . f l o o r ( ( l o w   +   h i g h )   /   2 ) ; 
             i f   ( i t e r a t e e ( a r r a y [ m i d ] )   <   v a l u e )   l o w   =   m i d   +   1 ;   e l s e   h i g h   =   m i d ; 
         } 
         r e t u r n   l o w ; 
     } ; 
 
     / /   G e n e r a t o r   f u n c t i o n   t o   c r e a t e   t h e   i n d e x O f   a n d   l a s t I n d e x O f   f u n c t i o n s 
     f u n c t i o n   c r e a t e I n d e x F i n d e r ( d i r ,   p r e d i c a t e F i n d ,   s o r t e d I n d e x )   { 
         r e t u r n   f u n c t i o n ( a r r a y ,   i t e m ,   i d x )   { 
             v a r   i   =   0 ,   l e n g t h   =   g e t L e n g t h ( a r r a y ) ; 
             i f   ( t y p e o f   i d x   = =   ' n u m b e r ' )   { 
                 i f   ( d i r   >   0 )   { 
                         i   =   i d x   > =   0   ?   i d x   :   M a t h . m a x ( i d x   +   l e n g t h ,   i ) ; 
                 }   e l s e   { 
                         l e n g t h   =   i d x   > =   0   ?   M a t h . m i n ( i d x   +   1 ,   l e n g t h )   :   i d x   +   l e n g t h   +   1 ; 
                 } 
             }   e l s e   i f   ( s o r t e d I n d e x   & &   i d x   & &   l e n g t h )   { 
                 i d x   =   s o r t e d I n d e x ( a r r a y ,   i t e m ) ; 
                 r e t u r n   a r r a y [ i d x ]   = = =   i t e m   ?   i d x   :   - 1 ; 
             } 
             i f   ( i t e m   ! = =   i t e m )   { 
                 i d x   =   p r e d i c a t e F i n d ( s l i c e . c a l l ( a r r a y ,   i ,   l e n g t h ) ,   _ . i s N a N ) ; 
                 r e t u r n   i d x   > =   0   ?   i d x   +   i   :   - 1 ; 
             } 
             f o r   ( i d x   =   d i r   >   0   ?   i   :   l e n g t h   -   1 ;   i d x   > =   0   & &   i d x   <   l e n g t h ;   i d x   + =   d i r )   { 
                 i f   ( a r r a y [ i d x ]   = = =   i t e m )   r e t u r n   i d x ; 
             } 
             r e t u r n   - 1 ; 
         } ; 
     } 
 
     / /   R e t u r n   t h e   p o s i t i o n   o f   t h e   f i r s t   o c c u r r e n c e   o f   a n   i t e m   i n   a n   a r r a y , 
     / /   o r   - 1   i f   t h e   i t e m   i s   n o t   i n c l u d e d   i n   t h e   a r r a y . 
     / /   I f   t h e   a r r a y   i s   l a r g e   a n d   a l r e a d y   i n   s o r t   o r d e r ,   p a s s   ` t r u e ` 
     / /   f o r   * * i s S o r t e d * *   t o   u s e   b i n a r y   s e a r c h . 
     _ . i n d e x O f   =   c r e a t e I n d e x F i n d e r ( 1 ,   _ . f i n d I n d e x ,   _ . s o r t e d I n d e x ) ; 
     _ . l a s t I n d e x O f   =   c r e a t e I n d e x F i n d e r ( - 1 ,   _ . f i n d L a s t I n d e x ) ; 
 
     / /   G e n e r a t e   a n   i n t e g e r   A r r a y   c o n t a i n i n g   a n   a r i t h m e t i c   p r o g r e s s i o n .   A   p o r t   o f 
     / /   t h e   n a t i v e   P y t h o n   ` r a n g e ( ) `   f u n c t i o n .   S e e 
     / /   [ t h e   P y t h o n   d o c u m e n t a t i o n ] ( h t t p : / / d o c s . p y t h o n . o r g / l i b r a r y / f u n c t i o n s . h t m l # r a n g e ) . 
     _ . r a n g e   =   f u n c t i o n ( s t a r t ,   s t o p ,   s t e p )   { 
         i f   ( s t o p   = =   n u l l )   { 
             s t o p   =   s t a r t   | |   0 ; 
             s t a r t   =   0 ; 
         } 
         s t e p   =   s t e p   | |   1 ; 
 
         v a r   l e n g t h   =   M a t h . m a x ( M a t h . c e i l ( ( s t o p   -   s t a r t )   /   s t e p ) ,   0 ) ; 
         v a r   r a n g e   =   A r r a y ( l e n g t h ) ; 
 
         f o r   ( v a r   i d x   =   0 ;   i d x   <   l e n g t h ;   i d x + + ,   s t a r t   + =   s t e p )   { 
             r a n g e [ i d x ]   =   s t a r t ; 
         } 
 
         r e t u r n   r a n g e ; 
     } ; 
 
     / /   F u n c t i o n   ( a h e m )   F u n c t i o n s 
     / /   - - - - - - - - - - - - - - - - - - 
 
     / /   D e t e r m i n e s   w h e t h e r   t o   e x e c u t e   a   f u n c t i o n   a s   a   c o n s t r u c t o r 
     / /   o r   a   n o r m a l   f u n c t i o n   w i t h   t h e   p r o v i d e d   a r g u m e n t s 
     v a r   e x e c u t e B o u n d   =   f u n c t i o n ( s o u r c e F u n c ,   b o u n d F u n c ,   c o n t e x t ,   c a l l i n g C o n t e x t ,   a r g s )   { 
         i f   ( ! ( c a l l i n g C o n t e x t   i n s t a n c e o f   b o u n d F u n c ) )   r e t u r n   s o u r c e F u n c . a p p l y ( c o n t e x t ,   a r g s ) ; 
         v a r   s e l f   =   b a s e C r e a t e ( s o u r c e F u n c . p r o t o t y p e ) ; 
         v a r   r e s u l t   =   s o u r c e F u n c . a p p l y ( s e l f ,   a r g s ) ; 
         i f   ( _ . i s O b j e c t ( r e s u l t ) )   r e t u r n   r e s u l t ; 
         r e t u r n   s e l f ; 
     } ; 
 
     / /   C r e a t e   a   f u n c t i o n   b o u n d   t o   a   g i v e n   o b j e c t   ( a s s i g n i n g   ` t h i s ` ,   a n d   a r g u m e n t s , 
     / /   o p t i o n a l l y ) .   D e l e g a t e s   t o   * * E C M A S c r i p t   5 * * ' s   n a t i v e   ` F u n c t i o n . b i n d `   i f 
     / /   a v a i l a b l e . 
     _ . b i n d   =   f u n c t i o n ( f u n c ,   c o n t e x t )   { 
         i f   ( n a t i v e B i n d   & &   f u n c . b i n d   = = =   n a t i v e B i n d )   r e t u r n   n a t i v e B i n d . a p p l y ( f u n c ,   s l i c e . c a l l ( a r g u m e n t s ,   1 ) ) ; 
         i f   ( ! _ . i s F u n c t i o n ( f u n c ) )   t h r o w   n e w   T y p e E r r o r ( ' B i n d   m u s t   b e   c a l l e d   o n   a   f u n c t i o n ' ) ; 
         v a r   a r g s   =   s l i c e . c a l l ( a r g u m e n t s ,   2 ) ; 
         v a r   b o u n d   =   f u n c t i o n ( )   { 
             r e t u r n   e x e c u t e B o u n d ( f u n c ,   b o u n d ,   c o n t e x t ,   t h i s ,   a r g s . c o n c a t ( s l i c e . c a l l ( a r g u m e n t s ) ) ) ; 
         } ; 
         r e t u r n   b o u n d ; 
     } ; 
 
     / /   P a r t i a l l y   a p p l y   a   f u n c t i o n   b y   c r e a t i n g   a   v e r s i o n   t h a t   h a s   h a d   s o m e   o f   i t s 
     / /   a r g u m e n t s   p r e - f i l l e d ,   w i t h o u t   c h a n g i n g   i t s   d y n a m i c   ` t h i s `   c o n t e x t .   _   a c t s 
     / /   a s   a   p l a c e h o l d e r ,   a l l o w i n g   a n y   c o m b i n a t i o n   o f   a r g u m e n t s   t o   b e   p r e - f i l l e d . 
     _ . p a r t i a l   =   f u n c t i o n ( f u n c )   { 
         v a r   b o u n d A r g s   =   s l i c e . c a l l ( a r g u m e n t s ,   1 ) ; 
         v a r   b o u n d   =   f u n c t i o n ( )   { 
             v a r   p o s i t i o n   =   0 ,   l e n g t h   =   b o u n d A r g s . l e n g t h ; 
             v a r   a r g s   =   A r r a y ( l e n g t h ) ; 
             f o r   ( v a r   i   =   0 ;   i   <   l e n g t h ;   i + + )   { 
                 a r g s [ i ]   =   b o u n d A r g s [ i ]   = = =   _   ?   a r g u m e n t s [ p o s i t i o n + + ]   :   b o u n d A r g s [ i ] ; 
             } 
             w h i l e   ( p o s i t i o n   <   a r g u m e n t s . l e n g t h )   a r g s . p u s h ( a r g u m e n t s [ p o s i t i o n + + ] ) ; 
             r e t u r n   e x e c u t e B o u n d ( f u n c ,   b o u n d ,   t h i s ,   t h i s ,   a r g s ) ; 
         } ; 
         r e t u r n   b o u n d ; 
     } ; 
 
     / /   B i n d   a   n u m b e r   o f   a n   o b j e c t ' s   m e t h o d s   t o   t h a t   o b j e c t .   R e m a i n i n g   a r g u m e n t s 
     / /   a r e   t h e   m e t h o d   n a m e s   t o   b e   b o u n d .   U s e f u l   f o r   e n s u r i n g   t h a t   a l l   c a l l b a c k s 
     / /   d e f i n e d   o n   a n   o b j e c t   b e l o n g   t o   i t . 
     _ . b i n d A l l   =   f u n c t i o n ( o b j )   { 
         v a r   i ,   l e n g t h   =   a r g u m e n t s . l e n g t h ,   k e y ; 
         i f   ( l e n g t h   < =   1 )   t h r o w   n e w   E r r o r ( ' b i n d A l l   m u s t   b e   p a s s e d   f u n c t i o n   n a m e s ' ) ; 
         f o r   ( i   =   1 ;   i   <   l e n g t h ;   i + + )   { 
             k e y   =   a r g u m e n t s [ i ] ; 
             o b j [ k e y ]   =   _ . b i n d ( o b j [ k e y ] ,   o b j ) ; 
         } 
         r e t u r n   o b j ; 
     } ; 
 
     / /   M e m o i z e   a n   e x p e n s i v e   f u n c t i o n   b y   s t o r i n g   i t s   r e s u l t s . 
     _ . m e m o i z e   =   f u n c t i o n ( f u n c ,   h a s h e r )   { 
         v a r   m e m o i z e   =   f u n c t i o n ( k e y )   { 
             v a r   c a c h e   =   m e m o i z e . c a c h e ; 
             v a r   a d d r e s s   =   ' '   +   ( h a s h e r   ?   h a s h e r . a p p l y ( t h i s ,   a r g u m e n t s )   :   k e y ) ; 
             i f   ( ! _ . h a s ( c a c h e ,   a d d r e s s ) )   c a c h e [ a d d r e s s ]   =   f u n c . a p p l y ( t h i s ,   a r g u m e n t s ) ; 
             r e t u r n   c a c h e [ a d d r e s s ] ; 
         } ; 
         m e m o i z e . c a c h e   =   { } ; 
         r e t u r n   m e m o i z e ; 
     } ; 
 
     / /   D e l a y s   a   f u n c t i o n   f o r   t h e   g i v e n   n u m b e r   o f   m i l l i s e c o n d s ,   a n d   t h e n   c a l l s 
     / /   i t   w i t h   t h e   a r g u m e n t s   s u p p l i e d . 
     _ . d e l a y   =   f u n c t i o n ( f u n c ,   w a i t )   { 
         v a r   a r g s   =   s l i c e . c a l l ( a r g u m e n t s ,   2 ) ; 
         r e t u r n   s e t T i m e o u t ( f u n c t i o n ( ) { 
             r e t u r n   f u n c . a p p l y ( n u l l ,   a r g s ) ; 
         } ,   w a i t ) ; 
     } ; 
 
     / /   D e f e r s   a   f u n c t i o n ,   s c h e d u l i n g   i t   t o   r u n   a f t e r   t h e   c u r r e n t   c a l l   s t a c k   h a s 
     / /   c l e a r e d . 
     _ . d e f e r   =   _ . p a r t i a l ( _ . d e l a y ,   _ ,   1 ) ; 
 
     / /   R e t u r n s   a   f u n c t i o n ,   t h a t ,   w h e n   i n v o k e d ,   w i l l   o n l y   b e   t r i g g e r e d   a t   m o s t   o n c e 
     / /   d u r i n g   a   g i v e n   w i n d o w   o f   t i m e .   N o r m a l l y ,   t h e   t h r o t t l e d   f u n c t i o n   w i l l   r u n 
     / /   a s   m u c h   a s   i t   c a n ,   w i t h o u t   e v e r   g o i n g   m o r e   t h a n   o n c e   p e r   ` w a i t `   d u r a t i o n ; 
     / /   b u t   i f   y o u ' d   l i k e   t o   d i s a b l e   t h e   e x e c u t i o n   o n   t h e   l e a d i n g   e d g e ,   p a s s 
     / /   ` { l e a d i n g :   f a l s e } ` .   T o   d i s a b l e   e x e c u t i o n   o n   t h e   t r a i l i n g   e d g e ,   d i t t o . 
     _ . t h r o t t l e   =   f u n c t i o n ( f u n c ,   w a i t ,   o p t i o n s )   { 
         v a r   c o n t e x t ,   a r g s ,   r e s u l t ; 
         v a r   t i m e o u t   =   n u l l ; 
         v a r   p r e v i o u s   =   0 ; 
         i f   ( ! o p t i o n s )   o p t i o n s   =   { } ; 
         v a r   l a t e r   =   f u n c t i o n ( )   { 
             p r e v i o u s   =   o p t i o n s . l e a d i n g   = = =   f a l s e   ?   0   :   _ . n o w ( ) ; 
             t i m e o u t   =   n u l l ; 
             r e s u l t   =   f u n c . a p p l y ( c o n t e x t ,   a r g s ) ; 
             i f   ( ! t i m e o u t )   c o n t e x t   =   a r g s   =   n u l l ; 
         } ; 
         r e t u r n   f u n c t i o n ( )   { 
             v a r   n o w   =   _ . n o w ( ) ; 
             i f   ( ! p r e v i o u s   & &   o p t i o n s . l e a d i n g   = = =   f a l s e )   p r e v i o u s   =   n o w ; 
             v a r   r e m a i n i n g   =   w a i t   -   ( n o w   -   p r e v i o u s ) ; 
             c o n t e x t   =   t h i s ; 
             a r g s   =   a r g u m e n t s ; 
             i f   ( r e m a i n i n g   < =   0   | |   r e m a i n i n g   >   w a i t )   { 
                 i f   ( t i m e o u t )   { 
                     c l e a r T i m e o u t ( t i m e o u t ) ; 
                     t i m e o u t   =   n u l l ; 
                 } 
                 p r e v i o u s   =   n o w ; 
                 r e s u l t   =   f u n c . a p p l y ( c o n t e x t ,   a r g s ) ; 
                 i f   ( ! t i m e o u t )   c o n t e x t   =   a r g s   =   n u l l ; 
             }   e l s e   i f   ( ! t i m e o u t   & &   o p t i o n s . t r a i l i n g   ! = =   f a l s e )   { 
                 t i m e o u t   =   s e t T i m e o u t ( l a t e r ,   r e m a i n i n g ) ; 
             } 
             r e t u r n   r e s u l t ; 
         } ; 
     } ; 
 
     / /   R e t u r n s   a   f u n c t i o n ,   t h a t ,   a s   l o n g   a s   i t   c o n t i n u e s   t o   b e   i n v o k e d ,   w i l l   n o t 
     / /   b e   t r i g g e r e d .   T h e   f u n c t i o n   w i l l   b e   c a l l e d   a f t e r   i t   s t o p s   b e i n g   c a l l e d   f o r 
     / /   N   m i l l i s e c o n d s .   I f   ` i m m e d i a t e `   i s   p a s s e d ,   t r i g g e r   t h e   f u n c t i o n   o n   t h e 
     / /   l e a d i n g   e d g e ,   i n s t e a d   o f   t h e   t r a i l i n g . 
     _ . d e b o u n c e   =   f u n c t i o n ( f u n c ,   w a i t ,   i m m e d i a t e )   { 
         v a r   t i m e o u t ,   a r g s ,   c o n t e x t ,   t i m e s t a m p ,   r e s u l t ; 
 
         v a r   l a t e r   =   f u n c t i o n ( )   { 
             v a r   l a s t   =   _ . n o w ( )   -   t i m e s t a m p ; 
 
             i f   ( l a s t   <   w a i t   & &   l a s t   > =   0 )   { 
                 t i m e o u t   =   s e t T i m e o u t ( l a t e r ,   w a i t   -   l a s t ) ; 
             }   e l s e   { 
                 t i m e o u t   =   n u l l ; 
                 i f   ( ! i m m e d i a t e )   { 
                     r e s u l t   =   f u n c . a p p l y ( c o n t e x t ,   a r g s ) ; 
                     i f   ( ! t i m e o u t )   c o n t e x t   =   a r g s   =   n u l l ; 
                 } 
             } 
         } ; 
 
         r e t u r n   f u n c t i o n ( )   { 
             c o n t e x t   =   t h i s ; 
             a r g s   =   a r g u m e n t s ; 
             t i m e s t a m p   =   _ . n o w ( ) ; 
             v a r   c a l l N o w   =   i m m e d i a t e   & &   ! t i m e o u t ; 
             i f   ( ! t i m e o u t )   t i m e o u t   =   s e t T i m e o u t ( l a t e r ,   w a i t ) ; 
             i f   ( c a l l N o w )   { 
                 r e s u l t   =   f u n c . a p p l y ( c o n t e x t ,   a r g s ) ; 
                 c o n t e x t   =   a r g s   =   n u l l ; 
             } 
 
             r e t u r n   r e s u l t ; 
         } ; 
     } ; 
 
     / /   R e t u r n s   t h e   f i r s t   f u n c t i o n   p a s s e d   a s   a n   a r g u m e n t   t o   t h e   s e c o n d , 
     / /   a l l o w i n g   y o u   t o   a d j u s t   a r g u m e n t s ,   r u n   c o d e   b e f o r e   a n d   a f t e r ,   a n d 
     / /   c o n d i t i o n a l l y   e x e c u t e   t h e   o r i g i n a l   f u n c t i o n . 
     _ . w r a p   =   f u n c t i o n ( f u n c ,   w r a p p e r )   { 
         r e t u r n   _ . p a r t i a l ( w r a p p e r ,   f u n c ) ; 
     } ; 
 
     / /   R e t u r n s   a   n e g a t e d   v e r s i o n   o f   t h e   p a s s e d - i n   p r e d i c a t e . 
     _ . n e g a t e   =   f u n c t i o n ( p r e d i c a t e )   { 
         r e t u r n   f u n c t i o n ( )   { 
             r e t u r n   ! p r e d i c a t e . a p p l y ( t h i s ,   a r g u m e n t s ) ; 
         } ; 
     } ; 
 
     / /   R e t u r n s   a   f u n c t i o n   t h a t   i s   t h e   c o m p o s i t i o n   o f   a   l i s t   o f   f u n c t i o n s ,   e a c h 
     / /   c o n s u m i n g   t h e   r e t u r n   v a l u e   o f   t h e   f u n c t i o n   t h a t   f o l l o w s . 
     _ . c o m p o s e   =   f u n c t i o n ( )   { 
         v a r   a r g s   =   a r g u m e n t s ; 
         v a r   s t a r t   =   a r g s . l e n g t h   -   1 ; 
         r e t u r n   f u n c t i o n ( )   { 
             v a r   i   =   s t a r t ; 
             v a r   r e s u l t   =   a r g s [ s t a r t ] . a p p l y ( t h i s ,   a r g u m e n t s ) ; 
             w h i l e   ( i - - )   r e s u l t   =   a r g s [ i ] . c a l l ( t h i s ,   r e s u l t ) ; 
             r e t u r n   r e s u l t ; 
         } ; 
     } ; 
 
     / /   R e t u r n s   a   f u n c t i o n   t h a t   w i l l   o n l y   b e   e x e c u t e d   o n   a n d   a f t e r   t h e   N t h   c a l l . 
     _ . a f t e r   =   f u n c t i o n ( t i m e s ,   f u n c )   { 
         r e t u r n   f u n c t i o n ( )   { 
             i f   ( - - t i m e s   <   1 )   { 
                 r e t u r n   f u n c . a p p l y ( t h i s ,   a r g u m e n t s ) ; 
             } 
         } ; 
     } ; 
 
     / /   R e t u r n s   a   f u n c t i o n   t h a t   w i l l   o n l y   b e   e x e c u t e d   u p   t o   ( b u t   n o t   i n c l u d i n g )   t h e   N t h   c a l l . 
     _ . b e f o r e   =   f u n c t i o n ( t i m e s ,   f u n c )   { 
         v a r   m e m o ; 
         r e t u r n   f u n c t i o n ( )   { 
             i f   ( - - t i m e s   >   0 )   { 
                 m e m o   =   f u n c . a p p l y ( t h i s ,   a r g u m e n t s ) ; 
             } 
             i f   ( t i m e s   < =   1 )   f u n c   =   n u l l ; 
             r e t u r n   m e m o ; 
         } ; 
     } ; 
 
     / /   R e t u r n s   a   f u n c t i o n   t h a t   w i l l   b e   e x e c u t e d   a t   m o s t   o n e   t i m e ,   n o   m a t t e r   h o w 
     / /   o f t e n   y o u   c a l l   i t .   U s e f u l   f o r   l a z y   i n i t i a l i z a t i o n . 
     _ . o n c e   =   _ . p a r t i a l ( _ . b e f o r e ,   2 ) ; 
 
     / /   O b j e c t   F u n c t i o n s 
     / /   - - - - - - - - - - - - - - - - 
 
     / /   K e y s   i n   I E   <   9   t h a t   w o n ' t   b e   i t e r a t e d   b y   ` f o r   k e y   i n   . . . `   a n d   t h u s   m i s s e d . 
     v a r   h a s E n u m B u g   =   ! { t o S t r i n g :   n u l l } . p r o p e r t y I s E n u m e r a b l e ( ' t o S t r i n g ' ) ; 
     v a r   n o n E n u m e r a b l e P r o p s   =   [ ' v a l u e O f ' ,   ' i s P r o t o t y p e O f ' ,   ' t o S t r i n g ' , 
                                             ' p r o p e r t y I s E n u m e r a b l e ' ,   ' h a s O w n P r o p e r t y ' ,   ' t o L o c a l e S t r i n g ' ] ; 
 
     f u n c t i o n   c o l l e c t N o n E n u m P r o p s ( o b j ,   k e y s )   { 
         v a r   n o n E n u m I d x   =   n o n E n u m e r a b l e P r o p s . l e n g t h ; 
         v a r   c o n s t r u c t o r   =   o b j . c o n s t r u c t o r ; 
         v a r   p r o t o   =   ( _ . i s F u n c t i o n ( c o n s t r u c t o r )   & &   c o n s t r u c t o r . p r o t o t y p e )   | |   O b j P r o t o ; 
 
         / /   C o n s t r u c t o r   i s   a   s p e c i a l   c a s e . 
         v a r   p r o p   =   ' c o n s t r u c t o r ' ; 
         i f   ( _ . h a s ( o b j ,   p r o p )   & &   ! _ . c o n t a i n s ( k e y s ,   p r o p ) )   k e y s . p u s h ( p r o p ) ; 
 
         w h i l e   ( n o n E n u m I d x - - )   { 
             p r o p   =   n o n E n u m e r a b l e P r o p s [ n o n E n u m I d x ] ; 
             i f   ( p r o p   i n   o b j   & &   o b j [ p r o p ]   ! = =   p r o t o [ p r o p ]   & &   ! _ . c o n t a i n s ( k e y s ,   p r o p ) )   { 
                 k e y s . p u s h ( p r o p ) ; 
             } 
         } 
     } 
 
     / /   R e t r i e v e   t h e   n a m e s   o f   a n   o b j e c t ' s   o w n   p r o p e r t i e s . 
     / /   D e l e g a t e s   t o   * * E C M A S c r i p t   5 * * ' s   n a t i v e   ` O b j e c t . k e y s ` 
     _ . k e y s   =   f u n c t i o n ( o b j )   { 
         i f   ( ! _ . i s O b j e c t ( o b j ) )   r e t u r n   [ ] ; 
         i f   ( n a t i v e K e y s )   r e t u r n   n a t i v e K e y s ( o b j ) ; 
         v a r   k e y s   =   [ ] ; 
         f o r   ( v a r   k e y   i n   o b j )   i f   ( _ . h a s ( o b j ,   k e y ) )   k e y s . p u s h ( k e y ) ; 
         / /   A h e m ,   I E   <   9 . 
         i f   ( h a s E n u m B u g )   c o l l e c t N o n E n u m P r o p s ( o b j ,   k e y s ) ; 
         r e t u r n   k e y s ; 
     } ; 
 
     / /   R e t r i e v e   a l l   t h e   p r o p e r t y   n a m e s   o f   a n   o b j e c t . 
     _ . a l l K e y s   =   f u n c t i o n ( o b j )   { 
         i f   ( ! _ . i s O b j e c t ( o b j ) )   r e t u r n   [ ] ; 
         v a r   k e y s   =   [ ] ; 
         f o r   ( v a r   k e y   i n   o b j )   k e y s . p u s h ( k e y ) ; 
         / /   A h e m ,   I E   <   9 . 
         i f   ( h a s E n u m B u g )   c o l l e c t N o n E n u m P r o p s ( o b j ,   k e y s ) ; 
         r e t u r n   k e y s ; 
     } ; 
 
     / /   R e t r i e v e   t h e   v a l u e s   o f   a n   o b j e c t ' s   p r o p e r t i e s . 
     _ . v a l u e s   =   f u n c t i o n ( o b j )   { 
         v a r   k e y s   =   _ . k e y s ( o b j ) ; 
         v a r   l e n g t h   =   k e y s . l e n g t h ; 
         v a r   v a l u e s   =   A r r a y ( l e n g t h ) ; 
         f o r   ( v a r   i   =   0 ;   i   <   l e n g t h ;   i + + )   { 
             v a l u e s [ i ]   =   o b j [ k e y s [ i ] ] ; 
         } 
         r e t u r n   v a l u e s ; 
     } ; 
 
     / /   R e t u r n s   t h e   r e s u l t s   o f   a p p l y i n g   t h e   i t e r a t e e   t o   e a c h   e l e m e n t   o f   t h e   o b j e c t 
     / /   I n   c o n t r a s t   t o   _ . m a p   i t   r e t u r n s   a n   o b j e c t 
     _ . m a p O b j e c t   =   f u n c t i o n ( o b j ,   i t e r a t e e ,   c o n t e x t )   { 
         i t e r a t e e   =   c b ( i t e r a t e e ,   c o n t e x t ) ; 
         v a r   k e y s   =     _ . k e y s ( o b j ) , 
                     l e n g t h   =   k e y s . l e n g t h , 
                     r e s u l t s   =   { } , 
                     c u r r e n t K e y ; 
             f o r   ( v a r   i n d e x   =   0 ;   i n d e x   <   l e n g t h ;   i n d e x + + )   { 
                 c u r r e n t K e y   =   k e y s [ i n d e x ] ; 
                 r e s u l t s [ c u r r e n t K e y ]   =   i t e r a t e e ( o b j [ c u r r e n t K e y ] ,   c u r r e n t K e y ,   o b j ) ; 
             } 
             r e t u r n   r e s u l t s ; 
     } ; 
 
     / /   C o n v e r t   a n   o b j e c t   i n t o   a   l i s t   o f   ` [ k e y ,   v a l u e ] `   p a i r s . 
     _ . p a i r s   =   f u n c t i o n ( o b j )   { 
         v a r   k e y s   =   _ . k e y s ( o b j ) ; 
         v a r   l e n g t h   =   k e y s . l e n g t h ; 
         v a r   p a i r s   =   A r r a y ( l e n g t h ) ; 
         f o r   ( v a r   i   =   0 ;   i   <   l e n g t h ;   i + + )   { 
             p a i r s [ i ]   =   [ k e y s [ i ] ,   o b j [ k e y s [ i ] ] ] ; 
         } 
         r e t u r n   p a i r s ; 
     } ; 
 
     / /   I n v e r t   t h e   k e y s   a n d   v a l u e s   o f   a n   o b j e c t .   T h e   v a l u e s   m u s t   b e   s e r i a l i z a b l e . 
     _ . i n v e r t   =   f u n c t i o n ( o b j )   { 
         v a r   r e s u l t   =   { } ; 
         v a r   k e y s   =   _ . k e y s ( o b j ) ; 
         f o r   ( v a r   i   =   0 ,   l e n g t h   =   k e y s . l e n g t h ;   i   <   l e n g t h ;   i + + )   { 
             r e s u l t [ o b j [ k e y s [ i ] ] ]   =   k e y s [ i ] ; 
         } 
         r e t u r n   r e s u l t ; 
     } ; 
 
     / /   R e t u r n   a   s o r t e d   l i s t   o f   t h e   f u n c t i o n   n a m e s   a v a i l a b l e   o n   t h e   o b j e c t . 
     / /   A l i a s e d   a s   ` m e t h o d s ` 
     _ . f u n c t i o n s   =   _ . m e t h o d s   =   f u n c t i o n ( o b j )   { 
         v a r   n a m e s   =   [ ] ; 
         f o r   ( v a r   k e y   i n   o b j )   { 
             i f   ( _ . i s F u n c t i o n ( o b j [ k e y ] ) )   n a m e s . p u s h ( k e y ) ; 
         } 
         r e t u r n   n a m e s . s o r t ( ) ; 
     } ; 
 
     / /   E x t e n d   a   g i v e n   o b j e c t   w i t h   a l l   t h e   p r o p e r t i e s   i n   p a s s e d - i n   o b j e c t ( s ) . 
     _ . e x t e n d   =   c r e a t e A s s i g n e r ( _ . a l l K e y s ) ; 
 
     / /   A s s i g n s   a   g i v e n   o b j e c t   w i t h   a l l   t h e   o w n   p r o p e r t i e s   i n   t h e   p a s s e d - i n   o b j e c t ( s ) 
     / /   ( h t t p s : / / d e v e l o p e r . m o z i l l a . o r g / d o c s / W e b / J a v a S c r i p t / R e f e r e n c e / G l o b a l _ O b j e c t s / O b j e c t / a s s i g n ) 
     _ . e x t e n d O w n   =   _ . a s s i g n   =   c r e a t e A s s i g n e r ( _ . k e y s ) ; 
 
     / /   R e t u r n s   t h e   f i r s t   k e y   o n   a n   o b j e c t   t h a t   p a s s e s   a   p r e d i c a t e   t e s t 
     _ . f i n d K e y   =   f u n c t i o n ( o b j ,   p r e d i c a t e ,   c o n t e x t )   { 
         p r e d i c a t e   =   c b ( p r e d i c a t e ,   c o n t e x t ) ; 
         v a r   k e y s   =   _ . k e y s ( o b j ) ,   k e y ; 
         f o r   ( v a r   i   =   0 ,   l e n g t h   =   k e y s . l e n g t h ;   i   <   l e n g t h ;   i + + )   { 
             k e y   =   k e y s [ i ] ; 
             i f   ( p r e d i c a t e ( o b j [ k e y ] ,   k e y ,   o b j ) )   r e t u r n   k e y ; 
         } 
     } ; 
 
     / /   R e t u r n   a   c o p y   o f   t h e   o b j e c t   o n l y   c o n t a i n i n g   t h e   w h i t e l i s t e d   p r o p e r t i e s . 
     _ . p i c k   =   f u n c t i o n ( o b j e c t ,   o i t e r a t e e ,   c o n t e x t )   { 
         v a r   r e s u l t   =   { } ,   o b j   =   o b j e c t ,   i t e r a t e e ,   k e y s ; 
         i f   ( o b j   = =   n u l l )   r e t u r n   r e s u l t ; 
         i f   ( _ . i s F u n c t i o n ( o i t e r a t e e ) )   { 
             k e y s   =   _ . a l l K e y s ( o b j ) ; 
             i t e r a t e e   =   o p t i m i z e C b ( o i t e r a t e e ,   c o n t e x t ) ; 
         }   e l s e   { 
             k e y s   =   f l a t t e n ( a r g u m e n t s ,   f a l s e ,   f a l s e ,   1 ) ; 
             i t e r a t e e   =   f u n c t i o n ( v a l u e ,   k e y ,   o b j )   {   r e t u r n   k e y   i n   o b j ;   } ; 
             o b j   =   O b j e c t ( o b j ) ; 
         } 
         f o r   ( v a r   i   =   0 ,   l e n g t h   =   k e y s . l e n g t h ;   i   <   l e n g t h ;   i + + )   { 
             v a r   k e y   =   k e y s [ i ] ; 
             v a r   v a l u e   =   o b j [ k e y ] ; 
             i f   ( i t e r a t e e ( v a l u e ,   k e y ,   o b j ) )   r e s u l t [ k e y ]   =   v a l u e ; 
         } 
         r e t u r n   r e s u l t ; 
     } ; 
 
       / /   R e t u r n   a   c o p y   o f   t h e   o b j e c t   w i t h o u t   t h e   b l a c k l i s t e d   p r o p e r t i e s . 
     _ . o m i t   =   f u n c t i o n ( o b j ,   i t e r a t e e ,   c o n t e x t )   { 
         i f   ( _ . i s F u n c t i o n ( i t e r a t e e ) )   { 
             i t e r a t e e   =   _ . n e g a t e ( i t e r a t e e ) ; 
         }   e l s e   { 
             v a r   k e y s   =   _ . m a p ( f l a t t e n ( a r g u m e n t s ,   f a l s e ,   f a l s e ,   1 ) ,   S t r i n g ) ; 
             i t e r a t e e   =   f u n c t i o n ( v a l u e ,   k e y )   { 
                 r e t u r n   ! _ . c o n t a i n s ( k e y s ,   k e y ) ; 
             } ; 
         } 
         r e t u r n   _ . p i c k ( o b j ,   i t e r a t e e ,   c o n t e x t ) ; 
     } ; 
 
     / /   F i l l   i n   a   g i v e n   o b j e c t   w i t h   d e f a u l t   p r o p e r t i e s . 
     _ . d e f a u l t s   =   c r e a t e A s s i g n e r ( _ . a l l K e y s ,   t r u e ) ; 
 
     / /   C r e a t e s   a n   o b j e c t   t h a t   i n h e r i t s   f r o m   t h e   g i v e n   p r o t o t y p e   o b j e c t . 
     / /   I f   a d d i t i o n a l   p r o p e r t i e s   a r e   p r o v i d e d   t h e n   t h e y   w i l l   b e   a d d e d   t o   t h e 
     / /   c r e a t e d   o b j e c t . 
     _ . c r e a t e   =   f u n c t i o n ( p r o t o t y p e ,   p r o p s )   { 
         v a r   r e s u l t   =   b a s e C r e a t e ( p r o t o t y p e ) ; 
         i f   ( p r o p s )   _ . e x t e n d O w n ( r e s u l t ,   p r o p s ) ; 
         r e t u r n   r e s u l t ; 
     } ; 
 
     / /   C r e a t e   a   ( s h a l l o w - c l o n e d )   d u p l i c a t e   o f   a n   o b j e c t . 
     _ . c l o n e   =   f u n c t i o n ( o b j )   { 
         i f   ( ! _ . i s O b j e c t ( o b j ) )   r e t u r n   o b j ; 
         r e t u r n   _ . i s A r r a y ( o b j )   ?   o b j . s l i c e ( )   :   _ . e x t e n d ( { } ,   o b j ) ; 
     } ; 
 
     / /   I n v o k e s   i n t e r c e p t o r   w i t h   t h e   o b j ,   a n d   t h e n   r e t u r n s   o b j . 
     / /   T h e   p r i m a r y   p u r p o s e   o f   t h i s   m e t h o d   i s   t o   " t a p   i n t o "   a   m e t h o d   c h a i n ,   i n 
     / /   o r d e r   t o   p e r f o r m   o p e r a t i o n s   o n   i n t e r m e d i a t e   r e s u l t s   w i t h i n   t h e   c h a i n . 
     _ . t a p   =   f u n c t i o n ( o b j ,   i n t e r c e p t o r )   { 
         i n t e r c e p t o r ( o b j ) ; 
         r e t u r n   o b j ; 
     } ; 
 
     / /   R e t u r n s   w h e t h e r   a n   o b j e c t   h a s   a   g i v e n   s e t   o f   ` k e y : v a l u e `   p a i r s . 
     _ . i s M a t c h   =   f u n c t i o n ( o b j e c t ,   a t t r s )   { 
         v a r   k e y s   =   _ . k e y s ( a t t r s ) ,   l e n g t h   =   k e y s . l e n g t h ; 
         i f   ( o b j e c t   = =   n u l l )   r e t u r n   ! l e n g t h ; 
         v a r   o b j   =   O b j e c t ( o b j e c t ) ; 
         f o r   ( v a r   i   =   0 ;   i   <   l e n g t h ;   i + + )   { 
             v a r   k e y   =   k e y s [ i ] ; 
             i f   ( a t t r s [ k e y ]   ! = =   o b j [ k e y ]   | |   ! ( k e y   i n   o b j ) )   r e t u r n   f a l s e ; 
         } 
         r e t u r n   t r u e ; 
     } ; 
 
 
     / /   I n t e r n a l   r e c u r s i v e   c o m p a r i s o n   f u n c t i o n   f o r   ` i s E q u a l ` . 
     v a r   e q   =   f u n c t i o n ( a ,   b ,   a S t a c k ,   b S t a c k )   { 
         / /   I d e n t i c a l   o b j e c t s   a r e   e q u a l .   ` 0   = = =   - 0 ` ,   b u t   t h e y   a r e n ' t   i d e n t i c a l . 
         / /   S e e   t h e   [ H a r m o n y   ` e g a l `   p r o p o s a l ] ( h t t p : / / w i k i . e c m a s c r i p t . o r g / d o k u . p h p ? i d = h a r m o n y : e g a l ) . 
         i f   ( a   = = =   b )   r e t u r n   a   ! = =   0   | |   1   /   a   = = =   1   /   b ; 
         / /   A   s t r i c t   c o m p a r i s o n   i s   n e c e s s a r y   b e c a u s e   ` n u l l   = =   u n d e f i n e d ` . 
         i f   ( a   = =   n u l l   | |   b   = =   n u l l )   r e t u r n   a   = = =   b ; 
         / /   U n w r a p   a n y   w r a p p e d   o b j e c t s . 
         i f   ( a   i n s t a n c e o f   _ )   a   =   a . _ w r a p p e d ; 
         i f   ( b   i n s t a n c e o f   _ )   b   =   b . _ w r a p p e d ; 
         / /   C o m p a r e   ` [ [ C l a s s ] ] `   n a m e s . 
         v a r   c l a s s N a m e   =   t o S t r i n g . c a l l ( a ) ; 
         i f   ( c l a s s N a m e   ! = =   t o S t r i n g . c a l l ( b ) )   r e t u r n   f a l s e ; 
         s w i t c h   ( c l a s s N a m e )   { 
             / /   S t r i n g s ,   n u m b e r s ,   r e g u l a r   e x p r e s s i o n s ,   d a t e s ,   a n d   b o o l e a n s   a r e   c o m p a r e d   b y   v a l u e . 
             c a s e   ' [ o b j e c t   R e g E x p ] ' : 
             / /   R e g E x p s   a r e   c o e r c e d   t o   s t r i n g s   f o r   c o m p a r i s o n   ( N o t e :   ' '   +   / a / i   = = =   ' / a / i ' ) 
             c a s e   ' [ o b j e c t   S t r i n g ] ' : 
                 / /   P r i m i t i v e s   a n d   t h e i r   c o r r e s p o n d i n g   o b j e c t   w r a p p e r s   a r e   e q u i v a l e n t ;   t h u s ,   ` " 5 " `   i s 
                 / /   e q u i v a l e n t   t o   ` n e w   S t r i n g ( " 5 " ) ` . 
                 r e t u r n   ' '   +   a   = = =   ' '   +   b ; 
             c a s e   ' [ o b j e c t   N u m b e r ] ' : 
                 / /   ` N a N ` s   a r e   e q u i v a l e n t ,   b u t   n o n - r e f l e x i v e . 
                 / /   O b j e c t ( N a N )   i s   e q u i v a l e n t   t o   N a N 
                 i f   ( + a   ! = =   + a )   r e t u r n   + b   ! = =   + b ; 
                 / /   A n   ` e g a l `   c o m p a r i s o n   i s   p e r f o r m e d   f o r   o t h e r   n u m e r i c   v a l u e s . 
                 r e t u r n   + a   = = =   0   ?   1   /   + a   = = =   1   /   b   :   + a   = = =   + b ; 
             c a s e   ' [ o b j e c t   D a t e ] ' : 
             c a s e   ' [ o b j e c t   B o o l e a n ] ' : 
                 / /   C o e r c e   d a t e s   a n d   b o o l e a n s   t o   n u m e r i c   p r i m i t i v e   v a l u e s .   D a t e s   a r e   c o m p a r e d   b y   t h e i r 
                 / /   m i l l i s e c o n d   r e p r e s e n t a t i o n s .   N o t e   t h a t   i n v a l i d   d a t e s   w i t h   m i l l i s e c o n d   r e p r e s e n t a t i o n s 
                 / /   o f   ` N a N `   a r e   n o t   e q u i v a l e n t . 
                 r e t u r n   + a   = = =   + b ; 
         } 
 
         v a r   a r e A r r a y s   =   c l a s s N a m e   = = =   ' [ o b j e c t   A r r a y ] ' ; 
         i f   ( ! a r e A r r a y s )   { 
             i f   ( t y p e o f   a   ! =   ' o b j e c t '   | |   t y p e o f   b   ! =   ' o b j e c t ' )   r e t u r n   f a l s e ; 
 
             / /   O b j e c t s   w i t h   d i f f e r e n t   c o n s t r u c t o r s   a r e   n o t   e q u i v a l e n t ,   b u t   ` O b j e c t ` s   o r   ` A r r a y ` s 
             / /   f r o m   d i f f e r e n t   f r a m e s   a r e . 
             v a r   a C t o r   =   a . c o n s t r u c t o r ,   b C t o r   =   b . c o n s t r u c t o r ; 
             i f   ( a C t o r   ! = =   b C t o r   & &   ! ( _ . i s F u n c t i o n ( a C t o r )   & &   a C t o r   i n s t a n c e o f   a C t o r   & & 
                                                               _ . i s F u n c t i o n ( b C t o r )   & &   b C t o r   i n s t a n c e o f   b C t o r ) 
                                                     & &   ( ' c o n s t r u c t o r '   i n   a   & &   ' c o n s t r u c t o r '   i n   b ) )   { 
                 r e t u r n   f a l s e ; 
             } 
         } 
         / /   A s s u m e   e q u a l i t y   f o r   c y c l i c   s t r u c t u r e s .   T h e   a l g o r i t h m   f o r   d e t e c t i n g   c y c l i c 
         / /   s t r u c t u r e s   i s   a d a p t e d   f r o m   E S   5 . 1   s e c t i o n   1 5 . 1 2 . 3 ,   a b s t r a c t   o p e r a t i o n   ` J O ` . 
 
         / /   I n i t i a l i z i n g   s t a c k   o f   t r a v e r s e d   o b j e c t s . 
         / /   I t ' s   d o n e   h e r e   s i n c e   w e   o n l y   n e e d   t h e m   f o r   o b j e c t s   a n d   a r r a y s   c o m p a r i s o n . 
         a S t a c k   =   a S t a c k   | |   [ ] ; 
         b S t a c k   =   b S t a c k   | |   [ ] ; 
         v a r   l e n g t h   =   a S t a c k . l e n g t h ; 
         w h i l e   ( l e n g t h - - )   { 
             / /   L i n e a r   s e a r c h .   P e r f o r m a n c e   i s   i n v e r s e l y   p r o p o r t i o n a l   t o   t h e   n u m b e r   o f 
             / /   u n i q u e   n e s t e d   s t r u c t u r e s . 
             i f   ( a S t a c k [ l e n g t h ]   = = =   a )   r e t u r n   b S t a c k [ l e n g t h ]   = = =   b ; 
         } 
 
         / /   A d d   t h e   f i r s t   o b j e c t   t o   t h e   s t a c k   o f   t r a v e r s e d   o b j e c t s . 
         a S t a c k . p u s h ( a ) ; 
         b S t a c k . p u s h ( b ) ; 
 
         / /   R e c u r s i v e l y   c o m p a r e   o b j e c t s   a n d   a r r a y s . 
         i f   ( a r e A r r a y s )   { 
             / /   C o m p a r e   a r r a y   l e n g t h s   t o   d e t e r m i n e   i f   a   d e e p   c o m p a r i s o n   i s   n e c e s s a r y . 
             l e n g t h   =   a . l e n g t h ; 
             i f   ( l e n g t h   ! = =   b . l e n g t h )   r e t u r n   f a l s e ; 
             / /   D e e p   c o m p a r e   t h e   c o n t e n t s ,   i g n o r i n g   n o n - n u m e r i c   p r o p e r t i e s . 
             w h i l e   ( l e n g t h - - )   { 
                 i f   ( ! e q ( a [ l e n g t h ] ,   b [ l e n g t h ] ,   a S t a c k ,   b S t a c k ) )   r e t u r n   f a l s e ; 
             } 
         }   e l s e   { 
             / /   D e e p   c o m p a r e   o b j e c t s . 
             v a r   k e y s   =   _ . k e y s ( a ) ,   k e y ; 
             l e n g t h   =   k e y s . l e n g t h ; 
             / /   E n s u r e   t h a t   b o t h   o b j e c t s   c o n t a i n   t h e   s a m e   n u m b e r   o f   p r o p e r t i e s   b e f o r e   c o m p a r i n g   d e e p   e q u a l i t y . 
             i f   ( _ . k e y s ( b ) . l e n g t h   ! = =   l e n g t h )   r e t u r n   f a l s e ; 
             w h i l e   ( l e n g t h - - )   { 
                 / /   D e e p   c o m p a r e   e a c h   m e m b e r 
                 k e y   =   k e y s [ l e n g t h ] ; 
                 i f   ( ! ( _ . h a s ( b ,   k e y )   & &   e q ( a [ k e y ] ,   b [ k e y ] ,   a S t a c k ,   b S t a c k ) ) )   r e t u r n   f a l s e ; 
             } 
         } 
         / /   R e m o v e   t h e   f i r s t   o b j e c t   f r o m   t h e   s t a c k   o f   t r a v e r s e d   o b j e c t s . 
         a S t a c k . p o p ( ) ; 
         b S t a c k . p o p ( ) ; 
         r e t u r n   t r u e ; 
     } ; 
 
     / /   P e r f o r m   a   d e e p   c o m p a r i s o n   t o   c h e c k   i f   t w o   o b j e c t s   a r e   e q u a l . 
     _ . i s E q u a l   =   f u n c t i o n ( a ,   b )   { 
         r e t u r n   e q ( a ,   b ) ; 
     } ; 
 
     / /   I s   a   g i v e n   a r r a y ,   s t r i n g ,   o r   o b j e c t   e m p t y ? 
     / /   A n   " e m p t y "   o b j e c t   h a s   n o   e n u m e r a b l e   o w n - p r o p e r t i e s . 
     _ . i s E m p t y   =   f u n c t i o n ( o b j )   { 
         i f   ( o b j   = =   n u l l )   r e t u r n   t r u e ; 
         i f   ( i s A r r a y L i k e ( o b j )   & &   ( _ . i s A r r a y ( o b j )   | |   _ . i s S t r i n g ( o b j )   | |   _ . i s A r g u m e n t s ( o b j ) ) )   r e t u r n   o b j . l e n g t h   = = =   0 ; 
         r e t u r n   _ . k e y s ( o b j ) . l e n g t h   = = =   0 ; 
     } ; 
 
     / /   I s   a   g i v e n   v a l u e   a   D O M   e l e m e n t ? 
     _ . i s E l e m e n t   =   f u n c t i o n ( o b j )   { 
         r e t u r n   ! ! ( o b j   & &   o b j . n o d e T y p e   = = =   1 ) ; 
     } ; 
 
     / /   I s   a   g i v e n   v a l u e   a n   a r r a y ? 
     / /   D e l e g a t e s   t o   E C M A 5 ' s   n a t i v e   A r r a y . i s A r r a y 
     _ . i s A r r a y   =   n a t i v e I s A r r a y   | |   f u n c t i o n ( o b j )   { 
         r e t u r n   t o S t r i n g . c a l l ( o b j )   = = =   ' [ o b j e c t   A r r a y ] ' ; 
     } ; 
 
     / /   I s   a   g i v e n   v a r i a b l e   a n   o b j e c t ? 
     _ . i s O b j e c t   =   f u n c t i o n ( o b j )   { 
         v a r   t y p e   =   t y p e o f   o b j ; 
         r e t u r n   t y p e   = = =   ' f u n c t i o n '   | |   t y p e   = = =   ' o b j e c t '   & &   ! ! o b j ; 
     } ; 
 
     / /   A d d   s o m e   i s T y p e   m e t h o d s :   i s A r g u m e n t s ,   i s F u n c t i o n ,   i s S t r i n g ,   i s N u m b e r ,   i s D a t e ,   i s R e g E x p ,   i s E r r o r . 
     _ . e a c h ( [ ' A r g u m e n t s ' ,   ' F u n c t i o n ' ,   ' S t r i n g ' ,   ' N u m b e r ' ,   ' D a t e ' ,   ' R e g E x p ' ,   ' E r r o r ' ] ,   f u n c t i o n ( n a m e )   { 
         _ [ ' i s '   +   n a m e ]   =   f u n c t i o n ( o b j )   { 
             r e t u r n   t o S t r i n g . c a l l ( o b j )   = = =   ' [ o b j e c t   '   +   n a m e   +   ' ] ' ; 
         } ; 
     } ) ; 
 
     / /   D e f i n e   a   f a l l b a c k   v e r s i o n   o f   t h e   m e t h o d   i n   b r o w s e r s   ( a h e m ,   I E   <   9 ) ,   w h e r e 
     / /   t h e r e   i s n ' t   a n y   i n s p e c t a b l e   " A r g u m e n t s "   t y p e . 
     i f   ( ! _ . i s A r g u m e n t s ( a r g u m e n t s ) )   { 
         _ . i s A r g u m e n t s   =   f u n c t i o n ( o b j )   { 
             r e t u r n   _ . h a s ( o b j ,   ' c a l l e e ' ) ; 
         } ; 
     } 
 
     / /   O p t i m i z e   ` i s F u n c t i o n `   i f   a p p r o p r i a t e .   W o r k   a r o u n d   s o m e   t y p e o f   b u g s   i n   o l d   v 8 , 
     / /   I E   1 1   ( # 1 6 2 1 ) ,   a n d   i n   S a f a r i   8   ( # 1 9 2 9 ) . 
     i f   ( t y p e o f   / . /   ! =   ' f u n c t i o n '   & &   t y p e o f   I n t 8 A r r a y   ! =   ' o b j e c t ' )   { 
         _ . i s F u n c t i o n   =   f u n c t i o n ( o b j )   { 
             r e t u r n   t y p e o f   o b j   = =   ' f u n c t i o n '   | |   f a l s e ; 
         } ; 
     } 
 
     / /   I s   a   g i v e n   o b j e c t   a   f i n i t e   n u m b e r ? 
     _ . i s F i n i t e   =   f u n c t i o n ( o b j )   { 
         r e t u r n   i s F i n i t e ( o b j )   & &   ! i s N a N ( p a r s e F l o a t ( o b j ) ) ; 
     } ; 
 
     / /   I s   t h e   g i v e n   v a l u e   ` N a N ` ?   ( N a N   i s   t h e   o n l y   n u m b e r   w h i c h   d o e s   n o t   e q u a l   i t s e l f ) . 
     _ . i s N a N   =   f u n c t i o n ( o b j )   { 
         r e t u r n   _ . i s N u m b e r ( o b j )   & &   o b j   ! = =   + o b j ; 
     } ; 
 
     / /   I s   a   g i v e n   v a l u e   a   b o o l e a n ? 
     _ . i s B o o l e a n   =   f u n c t i o n ( o b j )   { 
         r e t u r n   o b j   = = =   t r u e   | |   o b j   = = =   f a l s e   | |   t o S t r i n g . c a l l ( o b j )   = = =   ' [ o b j e c t   B o o l e a n ] ' ; 
     } ; 
 
     / /   I s   a   g i v e n   v a l u e   e q u a l   t o   n u l l ? 
     _ . i s N u l l   =   f u n c t i o n ( o b j )   { 
         r e t u r n   o b j   = = =   n u l l ; 
     } ; 
 
     / /   I s   a   g i v e n   v a r i a b l e   u n d e f i n e d ? 
     _ . i s U n d e f i n e d   =   f u n c t i o n ( o b j )   { 
         r e t u r n   o b j   = = =   v o i d   0 ; 
     } ; 
 
     / /   S h o r t c u t   f u n c t i o n   f o r   c h e c k i n g   i f   a n   o b j e c t   h a s   a   g i v e n   p r o p e r t y   d i r e c t l y 
     / /   o n   i t s e l f   ( i n   o t h e r   w o r d s ,   n o t   o n   a   p r o t o t y p e ) . 
     _ . h a s   =   f u n c t i o n ( o b j ,   k e y )   { 
         r e t u r n   o b j   ! =   n u l l   & &   h a s O w n P r o p e r t y . c a l l ( o b j ,   k e y ) ; 
     } ; 
 
     / /   U t i l i t y   F u n c t i o n s 
     / /   - - - - - - - - - - - - - - - - - 
 
     / /   R u n   U n d e r s c o r e . j s   i n   * n o C o n f l i c t *   m o d e ,   r e t u r n i n g   t h e   ` _ `   v a r i a b l e   t o   i t s 
     / /   p r e v i o u s   o w n e r .   R e t u r n s   a   r e f e r e n c e   t o   t h e   U n d e r s c o r e   o b j e c t . 
     _ . n o C o n f l i c t   =   f u n c t i o n ( )   { 
         r o o t . _   =   p r e v i o u s U n d e r s c o r e ; 
         r e t u r n   t h i s ; 
     } ; 
 
     / /   K e e p   t h e   i d e n t i t y   f u n c t i o n   a r o u n d   f o r   d e f a u l t   i t e r a t e e s . 
     _ . i d e n t i t y   =   f u n c t i o n ( v a l u e )   { 
         r e t u r n   v a l u e ; 
     } ; 
 
     / /   P r e d i c a t e - g e n e r a t i n g   f u n c t i o n s .   O f t e n   u s e f u l   o u t s i d e   o f   U n d e r s c o r e . 
     _ . c o n s t a n t   =   f u n c t i o n ( v a l u e )   { 
         r e t u r n   f u n c t i o n ( )   { 
             r e t u r n   v a l u e ; 
         } ; 
     } ; 
 
     _ . n o o p   =   f u n c t i o n ( ) { } ; 
 
     _ . p r o p e r t y   =   p r o p e r t y ; 
 
     / /   G e n e r a t e s   a   f u n c t i o n   f o r   a   g i v e n   o b j e c t   t h a t   r e t u r n s   a   g i v e n   p r o p e r t y . 
     _ . p r o p e r t y O f   =   f u n c t i o n ( o b j )   { 
         r e t u r n   o b j   = =   n u l l   ?   f u n c t i o n ( ) { }   :   f u n c t i o n ( k e y )   { 
             r e t u r n   o b j [ k e y ] ; 
         } ; 
     } ; 
 
     / /   R e t u r n s   a   p r e d i c a t e   f o r   c h e c k i n g   w h e t h e r   a n   o b j e c t   h a s   a   g i v e n   s e t   o f 
     / /   ` k e y : v a l u e `   p a i r s . 
     _ . m a t c h e r   =   _ . m a t c h e s   =   f u n c t i o n ( a t t r s )   { 
         a t t r s   =   _ . e x t e n d O w n ( { } ,   a t t r s ) ; 
         r e t u r n   f u n c t i o n ( o b j )   { 
             r e t u r n   _ . i s M a t c h ( o b j ,   a t t r s ) ; 
         } ; 
     } ; 
 
     / /   R u n   a   f u n c t i o n   * * n * *   t i m e s . 
     _ . t i m e s   =   f u n c t i o n ( n ,   i t e r a t e e ,   c o n t e x t )   { 
         v a r   a c c u m   =   A r r a y ( M a t h . m a x ( 0 ,   n ) ) ; 
         i t e r a t e e   =   o p t i m i z e C b ( i t e r a t e e ,   c o n t e x t ,   1 ) ; 
         f o r   ( v a r   i   =   0 ;   i   <   n ;   i + + )   a c c u m [ i ]   =   i t e r a t e e ( i ) ; 
         r e t u r n   a c c u m ; 
     } ; 
 
     / /   R e t u r n   a   r a n d o m   i n t e g e r   b e t w e e n   m i n   a n d   m a x   ( i n c l u s i v e ) . 
     _ . r a n d o m   =   f u n c t i o n ( m i n ,   m a x )   { 
         i f   ( m a x   = =   n u l l )   { 
             m a x   =   m i n ; 
             m i n   =   0 ; 
         } 
         r e t u r n   m i n   +   M a t h . f l o o r ( M a t h . r a n d o m ( )   *   ( m a x   -   m i n   +   1 ) ) ; 
     } ; 
 
     / /   A   ( p o s s i b l y   f a s t e r )   w a y   t o   g e t   t h e   c u r r e n t   t i m e s t a m p   a s   a n   i n t e g e r . 
     _ . n o w   =   D a t e . n o w   | |   f u n c t i o n ( )   { 
         r e t u r n   n e w   D a t e ( ) . g e t T i m e ( ) ; 
     } ; 
 
       / /   L i s t   o f   H T M L   e n t i t i e s   f o r   e s c a p i n g . 
     v a r   e s c a p e M a p   =   { 
         ' & ' :   ' & a m p ; ' , 
         ' < ' :   ' & l t ; ' , 
         ' > ' :   ' & g t ; ' , 
         ' " ' :   ' & q u o t ; ' , 
         " ' " :   ' & # x 2 7 ; ' , 
         ' ` ' :   ' & # x 6 0 ; ' 
     } ; 
     v a r   u n e s c a p e M a p   =   _ . i n v e r t ( e s c a p e M a p ) ; 
 
     / /   F u n c t i o n s   f o r   e s c a p i n g   a n d   u n e s c a p i n g   s t r i n g s   t o / f r o m   H T M L   i n t e r p o l a t i o n . 
     v a r   c r e a t e E s c a p e r   =   f u n c t i o n ( m a p )   { 
         v a r   e s c a p e r   =   f u n c t i o n ( m a t c h )   { 
             r e t u r n   m a p [ m a t c h ] ; 
         } ; 
         / /   R e g e x e s   f o r   i d e n t i f y i n g   a   k e y   t h a t   n e e d s   t o   b e   e s c a p e d 
         v a r   s o u r c e   =   ' ( ? : '   +   _ . k e y s ( m a p ) . j o i n ( ' | ' )   +   ' ) ' ; 
         v a r   t e s t R e g e x p   =   R e g E x p ( s o u r c e ) ; 
         v a r   r e p l a c e R e g e x p   =   R e g E x p ( s o u r c e ,   ' g ' ) ; 
         r e t u r n   f u n c t i o n ( s t r i n g )   { 
             s t r i n g   =   s t r i n g   = =   n u l l   ?   ' '   :   ' '   +   s t r i n g ; 
             r e t u r n   t e s t R e g e x p . t e s t ( s t r i n g )   ?   s t r i n g . r e p l a c e ( r e p l a c e R e g e x p ,   e s c a p e r )   :   s t r i n g ; 
         } ; 
     } ; 
     _ . e s c a p e   =   c r e a t e E s c a p e r ( e s c a p e M a p ) ; 
     _ . u n e s c a p e   =   c r e a t e E s c a p e r ( u n e s c a p e M a p ) ; 
 
     / /   I f   t h e   v a l u e   o f   t h e   n a m e d   ` p r o p e r t y `   i s   a   f u n c t i o n   t h e n   i n v o k e   i t   w i t h   t h e 
     / /   ` o b j e c t `   a s   c o n t e x t ;   o t h e r w i s e ,   r e t u r n   i t . 
     _ . r e s u l t   =   f u n c t i o n ( o b j e c t ,   p r o p e r t y ,   f a l l b a c k )   { 
         v a r   v a l u e   =   o b j e c t   = =   n u l l   ?   v o i d   0   :   o b j e c t [ p r o p e r t y ] ; 
         i f   ( v a l u e   = = =   v o i d   0 )   { 
             v a l u e   =   f a l l b a c k ; 
         } 
         r e t u r n   _ . i s F u n c t i o n ( v a l u e )   ?   v a l u e . c a l l ( o b j e c t )   :   v a l u e ; 
     } ; 
 
     / /   G e n e r a t e   a   u n i q u e   i n t e g e r   i d   ( u n i q u e   w i t h i n   t h e   e n t i r e   c l i e n t   s e s s i o n ) . 
     / /   U s e f u l   f o r   t e m p o r a r y   D O M   i d s . 
     v a r   i d C o u n t e r   =   0 ; 
     _ . u n i q u e I d   =   f u n c t i o n ( p r e f i x )   { 
         v a r   i d   =   + + i d C o u n t e r   +   ' ' ; 
         r e t u r n   p r e f i x   ?   p r e f i x   +   i d   :   i d ; 
     } ; 
 
     / /   B y   d e f a u l t ,   U n d e r s c o r e   u s e s   E R B - s t y l e   t e m p l a t e   d e l i m i t e r s ,   c h a n g e   t h e 
     / /   f o l l o w i n g   t e m p l a t e   s e t t i n g s   t o   u s e   a l t e r n a t i v e   d e l i m i t e r s . 
     _ . t e m p l a t e S e t t i n g s   =   { 
         e v a l u a t e         :   / < % ( [ \ s \ S ] + ? ) % > / g , 
         i n t e r p o l a t e   :   / < % = ( [ \ s \ S ] + ? ) % > / g , 
         e s c a p e             :   / < % - ( [ \ s \ S ] + ? ) % > / g 
     } ; 
 
     / /   W h e n   c u s t o m i z i n g   ` t e m p l a t e S e t t i n g s ` ,   i f   y o u   d o n ' t   w a n t   t o   d e f i n e   a n 
     / /   i n t e r p o l a t i o n ,   e v a l u a t i o n   o r   e s c a p i n g   r e g e x ,   w e   n e e d   o n e   t h a t   i s 
     / /   g u a r a n t e e d   n o t   t o   m a t c h . 
     v a r   n o M a t c h   =   / ( . ) ^ / ; 
 
     / /   C e r t a i n   c h a r a c t e r s   n e e d   t o   b e   e s c a p e d   s o   t h a t   t h e y   c a n   b e   p u t   i n t o   a 
     / /   s t r i n g   l i t e r a l . 
     v a r   e s c a p e s   =   { 
         " ' " :             " ' " , 
         ' \ \ ' :           ' \ \ ' , 
         ' \ r ' :           ' r ' , 
         ' \ n ' :           ' n ' , 
         ' \ u 2 0 2 8 ' :   ' u 2 0 2 8 ' , 
         ' \ u 2 0 2 9 ' :   ' u 2 0 2 9 ' 
     } ; 
 
     v a r   e s c a p e r   =   / \ \ | ' | \ r | \ n | \ u 2 0 2 8 | \ u 2 0 2 9 / g ; 
 
     v a r   e s c a p e C h a r   =   f u n c t i o n ( m a t c h )   { 
         r e t u r n   ' \ \ '   +   e s c a p e s [ m a t c h ] ; 
     } ; 
 
     / /   J a v a S c r i p t   m i c r o - t e m p l a t i n g ,   s i m i l a r   t o   J o h n   R e s i g ' s   i m p l e m e n t a t i o n . 
     / /   U n d e r s c o r e   t e m p l a t i n g   h a n d l e s   a r b i t r a r y   d e l i m i t e r s ,   p r e s e r v e s   w h i t e s p a c e , 
     / /   a n d   c o r r e c t l y   e s c a p e s   q u o t e s   w i t h i n   i n t e r p o l a t e d   c o d e . 
     / /   N B :   ` o l d S e t t i n g s `   o n l y   e x i s t s   f o r   b a c k w a r d s   c o m p a t i b i l i t y . 
     _ . t e m p l a t e   =   f u n c t i o n ( t e x t ,   s e t t i n g s ,   o l d S e t t i n g s )   { 
         i f   ( ! s e t t i n g s   & &   o l d S e t t i n g s )   s e t t i n g s   =   o l d S e t t i n g s ; 
         s e t t i n g s   =   _ . d e f a u l t s ( { } ,   s e t t i n g s ,   _ . t e m p l a t e S e t t i n g s ) ; 
 
         / /   C o m b i n e   d e l i m i t e r s   i n t o   o n e   r e g u l a r   e x p r e s s i o n   v i a   a l t e r n a t i o n . 
         v a r   m a t c h e r   =   R e g E x p ( [ 
             ( s e t t i n g s . e s c a p e   | |   n o M a t c h ) . s o u r c e , 
             ( s e t t i n g s . i n t e r p o l a t e   | |   n o M a t c h ) . s o u r c e , 
             ( s e t t i n g s . e v a l u a t e   | |   n o M a t c h ) . s o u r c e 
         ] . j o i n ( ' | ' )   +   ' | $ ' ,   ' g ' ) ; 
 
         / /   C o m p i l e   t h e   t e m p l a t e   s o u r c e ,   e s c a p i n g   s t r i n g   l i t e r a l s   a p p r o p r i a t e l y . 
         v a r   i n d e x   =   0 ; 
         v a r   s o u r c e   =   " _ _ p + = ' " ; 
         t e x t . r e p l a c e ( m a t c h e r ,   f u n c t i o n ( m a t c h ,   e s c a p e ,   i n t e r p o l a t e ,   e v a l u a t e ,   o f f s e t )   { 
             s o u r c e   + =   t e x t . s l i c e ( i n d e x ,   o f f s e t ) . r e p l a c e ( e s c a p e r ,   e s c a p e C h a r ) ; 
             i n d e x   =   o f f s e t   +   m a t c h . l e n g t h ; 
 
             i f   ( e s c a p e )   { 
                 s o u r c e   + =   " ' + \ n ( ( _ _ t = ( "   +   e s c a p e   +   " ) ) = = n u l l ? ' ' : _ . e s c a p e ( _ _ t ) ) + \ n ' " ; 
             }   e l s e   i f   ( i n t e r p o l a t e )   { 
                 s o u r c e   + =   " ' + \ n ( ( _ _ t = ( "   +   i n t e r p o l a t e   +   " ) ) = = n u l l ? ' ' : _ _ t ) + \ n ' " ; 
             }   e l s e   i f   ( e v a l u a t e )   { 
                 s o u r c e   + =   " ' ; \ n "   +   e v a l u a t e   +   " \ n _ _ p + = ' " ; 
             } 
 
             / /   A d o b e   V M s   n e e d   t h e   m a t c h   r e t u r n e d   t o   p r o d u c e   t h e   c o r r e c t   o f f e s t . 
             r e t u r n   m a t c h ; 
         } ) ; 
         s o u r c e   + =   " ' ; \ n " ; 
 
         / /   I f   a   v a r i a b l e   i s   n o t   s p e c i f i e d ,   p l a c e   d a t a   v a l u e s   i n   l o c a l   s c o p e . 
         i f   ( ! s e t t i n g s . v a r i a b l e )   s o u r c e   =   ' w i t h ( o b j | | { } ) { \ n '   +   s o u r c e   +   ' } \ n ' ; 
 
         s o u r c e   =   " v a r   _ _ t , _ _ p = ' ' , _ _ j = A r r a y . p r o t o t y p e . j o i n , "   + 
             " p r i n t = f u n c t i o n ( ) { _ _ p + = _ _ j . c a l l ( a r g u m e n t s , ' ' ) ; } ; \ n "   + 
             s o u r c e   +   ' r e t u r n   _ _ p ; \ n ' ; 
 
         t r y   { 
             v a r   r e n d e r   =   n e w   F u n c t i o n ( s e t t i n g s . v a r i a b l e   | |   ' o b j ' ,   ' _ ' ,   s o u r c e ) ; 
         }   c a t c h   ( e )   { 
             e . s o u r c e   =   s o u r c e ; 
             t h r o w   e ; 
         } 
 
         v a r   t e m p l a t e   =   f u n c t i o n ( d a t a )   { 
             r e t u r n   r e n d e r . c a l l ( t h i s ,   d a t a ,   _ ) ; 
         } ; 
 
         / /   P r o v i d e   t h e   c o m p i l e d   s o u r c e   a s   a   c o n v e n i e n c e   f o r   p r e c o m p i l a t i o n . 
         v a r   a r g u m e n t   =   s e t t i n g s . v a r i a b l e   | |   ' o b j ' ; 
         t e m p l a t e . s o u r c e   =   ' f u n c t i o n ( '   +   a r g u m e n t   +   ' ) { \ n '   +   s o u r c e   +   ' } ' ; 
 
         r e t u r n   t e m p l a t e ; 
     } ; 
 
     / /   A d d   a   " c h a i n "   f u n c t i o n .   S t a r t   c h a i n i n g   a   w r a p p e d   U n d e r s c o r e   o b j e c t . 
     _ . c h a i n   =   f u n c t i o n ( o b j )   { 
         v a r   i n s t a n c e   =   _ ( o b j ) ; 
         i n s t a n c e . _ c h a i n   =   t r u e ; 
         r e t u r n   i n s t a n c e ; 
     } ; 
 
     / /   O O P 
     / /   - - - - - - - - - - - - - - - 
     / /   I f   U n d e r s c o r e   i s   c a l l e d   a s   a   f u n c t i o n ,   i t   r e t u r n s   a   w r a p p e d   o b j e c t   t h a t 
     / /   c a n   b e   u s e d   O O - s t y l e .   T h i s   w r a p p e r   h o l d s   a l t e r e d   v e r s i o n s   o f   a l l   t h e 
     / /   u n d e r s c o r e   f u n c t i o n s .   W r a p p e d   o b j e c t s   m a y   b e   c h a i n e d . 
 
     / /   H e l p e r   f u n c t i o n   t o   c o n t i n u e   c h a i n i n g   i n t e r m e d i a t e   r e s u l t s . 
     v a r   r e s u l t   =   f u n c t i o n ( i n s t a n c e ,   o b j )   { 
         r e t u r n   i n s t a n c e . _ c h a i n   ?   _ ( o b j ) . c h a i n ( )   :   o b j ; 
     } ; 
 
     / /   A d d   y o u r   o w n   c u s t o m   f u n c t i o n s   t o   t h e   U n d e r s c o r e   o b j e c t . 
     _ . m i x i n   =   f u n c t i o n ( o b j )   { 
         _ . e a c h ( _ . f u n c t i o n s ( o b j ) ,   f u n c t i o n ( n a m e )   { 
             v a r   f u n c   =   _ [ n a m e ]   =   o b j [ n a m e ] ; 
             _ . p r o t o t y p e [ n a m e ]   =   f u n c t i o n ( )   { 
                 v a r   a r g s   =   [ t h i s . _ w r a p p e d ] ; 
                 p u s h . a p p l y ( a r g s ,   a r g u m e n t s ) ; 
                 r e t u r n   r e s u l t ( t h i s ,   f u n c . a p p l y ( _ ,   a r g s ) ) ; 
             } ; 
         } ) ; 
     } ; 
 
     / /   A d d   a l l   o f   t h e   U n d e r s c o r e   f u n c t i o n s   t o   t h e   w r a p p e r   o b j e c t . 
     _ . m i x i n ( _ ) ; 
 
     / /   A d d   a l l   m u t a t o r   A r r a y   f u n c t i o n s   t o   t h e   w r a p p e r . 
     _ . e a c h ( [ ' p o p ' ,   ' p u s h ' ,   ' r e v e r s e ' ,   ' s h i f t ' ,   ' s o r t ' ,   ' s p l i c e ' ,   ' u n s h i f t ' ] ,   f u n c t i o n ( n a m e )   { 
         v a r   m e t h o d   =   A r r a y P r o t o [ n a m e ] ; 
         _ . p r o t o t y p e [ n a m e ]   =   f u n c t i o n ( )   { 
             v a r   o b j   =   t h i s . _ w r a p p e d ; 
             m e t h o d . a p p l y ( o b j ,   a r g u m e n t s ) ; 
             i f   ( ( n a m e   = = =   ' s h i f t '   | |   n a m e   = = =   ' s p l i c e ' )   & &   o b j . l e n g t h   = = =   0 )   d e l e t e   o b j [ 0 ] ; 
             r e t u r n   r e s u l t ( t h i s ,   o b j ) ; 
         } ; 
     } ) ; 
 
     / /   A d d   a l l   a c c e s s o r   A r r a y   f u n c t i o n s   t o   t h e   w r a p p e r . 
     _ . e a c h ( [ ' c o n c a t ' ,   ' j o i n ' ,   ' s l i c e ' ] ,   f u n c t i o n ( n a m e )   { 
         v a r   m e t h o d   =   A r r a y P r o t o [ n a m e ] ; 
         _ . p r o t o t y p e [ n a m e ]   =   f u n c t i o n ( )   { 
             r e t u r n   r e s u l t ( t h i s ,   m e t h o d . a p p l y ( t h i s . _ w r a p p e d ,   a r g u m e n t s ) ) ; 
         } ; 
     } ) ; 
 
     / /   E x t r a c t s   t h e   r e s u l t   f r o m   a   w r a p p e d   a n d   c h a i n e d   o b j e c t . 
     _ . p r o t o t y p e . v a l u e   =   f u n c t i o n ( )   { 
         r e t u r n   t h i s . _ w r a p p e d ; 
     } ; 
 
     / /   P r o v i d e   u n w r a p p i n g   p r o x y   f o r   s o m e   m e t h o d s   u s e d   i n   e n g i n e   o p e r a t i o n s 
     / /   s u c h   a s   a r i t h m e t i c   a n d   J S O N   s t r i n g i f i c a t i o n . 
     _ . p r o t o t y p e . v a l u e O f   =   _ . p r o t o t y p e . t o J S O N   =   _ . p r o t o t y p e . v a l u e ; 
 
     _ . p r o t o t y p e . t o S t r i n g   =   f u n c t i o n ( )   { 
         r e t u r n   ' '   +   t h i s . _ w r a p p e d ; 
     } ; 
 
     / /   A M D   r e g i s t r a t i o n   h a p p e n s   a t   t h e   e n d   f o r   c o m p a t i b i l i t y   w i t h   A M D   l o a d e r s 
     / /   t h a t   m a y   n o t   e n f o r c e   n e x t - t u r n   s e m a n t i c s   o n   m o d u l e s .   E v e n   t h o u g h   g e n e r a l 
     / /   p r a c t i c e   f o r   A M D   r e g i s t r a t i o n   i s   t o   b e   a n o n y m o u s ,   u n d e r s c o r e   r e g i s t e r s 
     / /   a s   a   n a m e d   m o d u l e   b e c a u s e ,   l i k e   j Q u e r y ,   i t   i s   a   b a s e   l i b r a r y   t h a t   i s 
     / /   p o p u l a r   e n o u g h   t o   b e   b u n d l e d   i n   a   t h i r d   p a r t y   l i b ,   b u t   n o t   b e   p a r t   o f 
     / /   a n   A M D   l o a d   r e q u e s t .   T h o s e   c a s e s   c o u l d   g e n e r a t e   a n   e r r o r   w h e n   a n 
     / /   a n o n y m o u s   d e f i n e ( )   i s   c a l l e d   o u t s i d e   o f   a   l o a d e r   r e q u e s t . 
     i f   ( t y p e o f   d e f i n e   = = =   ' f u n c t i o n '   & &   d e f i n e . a m d )   { 
         d e f i n e ( ' u n d e r s c o r e ' ,   [ ] ,   f u n c t i o n ( )   { 
             r e t u r n   _ ; 
         } ) ; 
     } 
 } . c a l l ( t h i s ) ) ; 
 
 } , { } ] , 3 : [ f u n c t i o n ( r e q u i r e , m o d u l e , e x p o r t s ) { 
 ' u s e   s t r i c t ' ; 
 
 O b j e c t . d e f i n e P r o p e r t y ( e x p o r t s ,   ' _ _ e s M o d u l e ' ,   { 
     v a l u e :   t r u e 
 } ) ; 
 
 f u n c t i o n   _ t o C o n s u m a b l e A r r a y ( a r r )   {   i f   ( A r r a y . i s A r r a y ( a r r ) )   {   f o r   ( v a r   i   =   0 ,   a r r 2   =   A r r a y ( a r r . l e n g t h ) ;   i   <   a r r . l e n g t h ;   i + + )   a r r 2 [ i ]   =   a r r [ i ] ;   r e t u r n   a r r 2 ;   }   e l s e   {   r e t u r n   A r r a y . f r o m ( a r r ) ;   }   } 
 
 v a r   s t a r d u s t   =   { } ; 
 
 s t a r d u s t . s e t O p t s   =   f u n c t i o n   ( )   { 
     v a r   d e f a u l t s   =   a r g u m e n t s [ 0 ]   = = =   u n d e f i n e d   ?   { }   :   a r g u m e n t s [ 0 ] ; 
     v a r   o p t i o n s   =   a r g u m e n t s [ 1 ]   = = =   u n d e f i n e d   ?   { }   :   a r g u m e n t s [ 1 ] ; 
 
     r e t u r n   O b j e c t . a s s i g n ( { } ,   d e f a u l t s ,   o p t i o n s ) ; 
 } ; 
 
 / /   T h i s   i s   a   c o n v e n i e n c e   m e t h o d   f o r   $ . N S M a k e R e c t .   W h i l e   i t ' s   n o t   t h a t   m u c h   e a s i e r 
 / /   t o   t y p e ,   i t   d o e s   a l l o w   f o r   u s i n g   t h e   s p r e a d   o p e r a t o r ,   w h i c h   c a n ' t   c u r r e n t l y 
 / /   b y   u s e d   d i r e c t l y   w i t h   N S M a k e R e c t . 
 / / 
 / /   e x : 
 / /       v a r   x y w h   =   [ 2 0 ,   2 0 ,   2 0 0 ,   2 0 ] ; 
 / /       s t a r t d u s t . m a k e R e c t ( . . . x y w h ) ; 
 s t a r d u s t . m a k e R e c t   =   f u n c t i o n   ( x ,   y ,   w ,   h )   { 
     r e t u r n   $ . N S M a k e R e c t ( x ,   y ,   w ,   h ) ; 
 } ; 
 
 / /   I   w a n t   t o   b e   a b l e   t o   d o   t h i s   t o   a d d   s u b v i e w s 
 s t a r d u s t . a p p e n d   =   f u n c t i o n   ( )   { } ; 
 
 s t a r d u s t . w i n d o w   =   f u n c t i o n   ( s e t t i n g s )   { 
     v a r   o p t s   =   s t a r d u s t . s e t O p t s ( { 
         t i t l e :   ' M y   A p p l i c a t i o n ' , 
         r e c t :   [ 0 ,   0 ,   2 0 0 ,   2 0 0 ] 
     } ,   s e t t i n g s ) ; 
 
     v a r   s t y l e M a s k   =   $ . N S T i t l e d W i n d o w M a s k   |   $ . N S C l o s a b l e W i n d o w M a s k   |   $ . N S R e s i z a b l e W i n d o w M a s k   |   $ . N S M i n i a t u r i z a b l e W i n d o w M a s k ; 
 
     v a r   o b j   =   { 
         a p p e n d :   f u n c t i o n   a p p e n d ( e l )   { 
             t h i s . e l . c o n t e n t V i e w . a d d S u b v i e w ( e l ) ; 
             r e t u r n   t h i s ; 
         } , 
 
         t i t l e :   f u n c t i o n   t i t l e ( )   { 
             v a r   t   =   a r g u m e n t s [ 0 ]   = = =   u n d e f i n e d   ?   n u l l   :   a r g u m e n t s [ 0 ] ; 
 
             i f   ( t )   { 
                 t h i s . e l . t i t l e   =   t ; 
                 r e t u r n   t h i s ; 
             }   e l s e   { 
                 r e t u r n   t h i s . e l . t i t l e ; 
             } 
         } , 
 
         d e l e g a t e :   f u n c t i o n   d e l e g a t e ( )   { 
             v a r   d   =   a r g u m e n t s [ 0 ]   = = =   u n d e f i n e d   ?   n u l l   :   a r g u m e n t s [ 0 ] ; 
 
             i f   ( d )   { 
                 t h i s . e l . d e l e g a t e   =   d ; 
                 r e t u r n   t h i s ; 
             }   e l s e   { 
                 r e t u r n   t h i s . e l . d e l e g a t e ; 
             } 
         } , 
 
         c e n t e r :   f u n c t i o n   c e n t e r ( )   { 
             t h i s . e l . c e n t e r ; 
         } , 
 
         r e c t :   [ 0 ,   0 ,   4 0 0 ,   2 0 0 ] , 
 
         p o s :   f u n c t i o n   p o s ( )   { 
             v a r   p   =   a r g u m e n t s [ 0 ]   = = =   u n d e f i n e d   ?   n u l l   :   a r g u m e n t s [ 0 ] ; 
 
             i f   ( p )   { 
                 t h i s . r e c t [ 0 ]   =   p . x ; 
                 t h i s . r e c t [ 1 ]   =   p . y ; 
             }   e l s e   { 
                 r e t u r n   { 
                     x :   t h i s . r e c t [ 0 ] , 
                     y :   t h i s . r e c t [ 1 ] 
                 } ; 
             } 
         } , 
 
         w i d t h :   f u n c t i o n   w i d t h ( )   { 
             v a r   w   =   a r g u m e n t s [ 0 ]   = = =   u n d e f i n e d   ?   n u l l   :   a r g u m e n t s [ 0 ] ; 
 
             i f   ( w )   { 
                 t h i s . r e c t [ 2 ]   =   w ; 
                 r e t u r n   t h i s ; 
             }   e l s e   { 
                 r e t u r n   t h i s . r e c t [ 2 ] ; 
             } 
         } , 
 
         h e i g h t :   f u n c t i o n   h e i g h t ( )   { 
             v a r   h   =   a r g u m e n t s [ 0 ]   = = =   u n d e f i n e d   ?   n u l l   :   a r g u m e n t s [ 0 ] ; 
 
             i f   ( h )   { 
                 t h i s . r e c t [ 3 ]   =   h ; 
                 r e t u r n   t h i s ; 
             }   e l s e   { 
                 r e t u r n   t h i s . r e c t [ 3 ] ; 
             } 
         } , 
 
         r e s i z e :   f u n c t i o n   r e s i z e ( w ,   h )   { 
             t h i s . w i d t h ( w ) ; 
             t h i s . h e i g h t ( h ) ; 
             t h i s . e l . s e t F r a m e D i s p l a y ( s t a r d u s t . m a k e R e c t . a p p l y ( s t a r d u s t ,   _ t o C o n s u m a b l e A r r a y ( t h i s . r e c t ) ) ,   t r u e ) ; 
             r e t u r n   t h i s ; 
         } 
     } ; 
 
     o b j . p o s ( { 
         x :   o p t s . r e c t [ 0 ] , 
         y :   o p t s . r e c t [ 1 ] 
     } ) ; 
 
     o b j . w i d t h ( o p t s . r e c t [ 2 ] ) ; 
     o b j . h e i g h t ( o p t s . r e c t [ 3 ] ) ; 
 
     o b j . e l   =   $ . N S W i n d o w . a l l o c . i n i t W i t h C o n t e n t R e c t S t y l e M a s k B a c k i n g D e f e r ( s t a r d u s t . m a k e R e c t . a p p l y ( s t a r d u s t ,   _ t o C o n s u m a b l e A r r a y ( o b j . r e c t ) ) ,   s t y l e M a s k ,   $ . N S B a c k i n g S t o r e B u f f e r e d ,   f a l s e ) ; 
 
     o b j . c e n t e r ( ) ; 
     o b j . e l . m a k e K e y A n d O r d e r F r o n t ( o b j . e l ) ; 
 
     o b j . t i t l e ( o p t s . t i t l e ) ; 
 
     r e t u r n   o b j ; 
 } ; 
 
 s t a r d u s t . b u t t o n   =   f u n c t i o n   ( s e t t i n g s )   { 
     v a r   o p t s   =   s t a r d u s t . s e t O p t s ( { 
         t i t l e :   ' B u t t o n ' , 
         r e c t :   [ 2 5 ,   2 5 ,   1 5 0 ,   2 4 ] , 
         t a r g e t :   n u l l , 
         a c t i o n :   n u l l 
     } ,   s e t t i n g s ) ; 
 
     v a r   b u t t o n   =   $ . N S B u t t o n . a l l o c . i n i t W i t h F r a m e ( s t a r d u s t . m a k e R e c t . a p p l y ( s t a r d u s t ,   _ t o C o n s u m a b l e A r r a y ( o p t s . r e c t ) ) ) ; 
 
     b u t t o n . t i t l e   =   o p t s . t i t l e ; 
     b u t t o n . b e z e l S t y l e   =   $ . N S R o u n d e d B e z e l S t y l e ; 
     b u t t o n . b u t t o n T y p e   =   $ . N S M o m e n t a r y L i g h t B u t t o n ; 
 
     i f   ( o p t s . t a r g e t )   { 
         b u t t o n . t a r g e t   =   o p t s . t a r g e t ; 
     } 
 
     i f   ( o p t s . a c t i o n )   { 
         b u t t o n . a c t i o n   =   o p t s . a c t i o n ; 
     } 
 
     r e t u r n   b u t t o n ; 
 } ; 
 
 s t a r d u s t . t e x t F i e l d   =   f u n c t i o n   ( s e t t i n g s )   { 
     v a r   o p t s   =   s t a r d u s t . s e t O p t s ( { 
         e d i t a b l e :   t r u e , 
         r e c t :   [ 2 5 ,   2 5 ,   2 0 0 ,   2 4 ] 
     } ,   s e t t i n g s ) ; 
 
     v a r   f i e l d   =   $ . N S T e x t F i e l d . a l l o c . i n i t W i t h F r a m e ( s t a r d u s t . m a k e R e c t . a p p l y ( s t a r d u s t ,   _ t o C o n s u m a b l e A r r a y ( o p t s . r e c t ) ) ) ; 
 
     f i e l d . e d i t a b l e   =   o p t s . e d i t a b l e ; 
     r e t u r n   f i e l d ; 
 } ; 
 
 s t a r d u s t . f i e l d L a b e l   =   f u n c t i o n   ( s e t t i n g s )   { 
     v a r   o p t s   =   s t a r d u s t . s e t O p t s ( { 
         v a l u e :   ' F i e l d   l a b e l ' , 
         r e c t :   [ 2 5 ,   2 5 ,   2 0 0 ,   2 4 ] 
     } ,   s e t t i n g s ) ; 
 
     v a r   l a b e l   =   $ . N S T e x t F i e l d . a l l o c . i n i t W i t h F r a m e ( s t a r d u s t . m a k e R e c t . a p p l y ( s t a r d u s t ,   _ t o C o n s u m a b l e A r r a y ( o p t s . r e c t ) ) ) ; 
 
     l a b e l . s t r i n g V a l u e   =   o p t s . v a l u e ; 
     l a b e l . d r a w s B a c k g r o u n d   =   f a l s e ; 
     l a b e l . e d i t a b l e   =   f a l s e ; 
     l a b e l . b e z e l e d   =   f a l s e ; 
     l a b e l . s e l e c t a b l e   =   t r u e ; 
     r e t u r n   l a b e l ; 
 } ; 
 
 e x p o r t s [ ' d e f a u l t ' ]   =   s t a r d u s t ; 
 m o d u l e . e x p o r t s   =   e x p o r t s [ ' d e f a u l t ' ] ; 
 
 } , { } ] } , { } , [ 1 ] ) ( 1 ) 
 } ) ;                                   �tjscr  ��ޭ