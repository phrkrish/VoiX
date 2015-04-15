//
//  ChatViewController.m
//  VoiceChat
//
//  Created by mac on 3/25/15.
//  Copyright (c) 2015 Vijai. All rights reserved.
//

#import "ChatViewController.h"

#define lblObjCell 1000

@interface ChatViewController (){
    
    NSMutableArray *ResponseArray;
    
}

@end

@implementation ChatViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    int i;
    
    
    
    _collectionViewObjGallery.delegate = self;
    _collectionViewObjGallery.dataSource = self;
    
    _flowLayout = [[UICollectionViewFlowLayout alloc] init];
    [_flowLayout setItemSize:CGSizeMake(_collectionViewObjGallery.frame.size.width, _collectionViewObjGallery.frame.size.height)];
    
    
    [_flowLayout setMinimumInteritemSpacing:0.0f];
    [_flowLayout setMinimumLineSpacing:0.0f];
    
    
    
    [_flowLayout setScrollDirection:UICollectionViewScrollDirectionHorizontal];
    [_collectionViewObjGallery setBounces:YES];
    [_collectionViewObjGallery setCollectionViewLayout:_flowLayout];
    
    [_collectionViewObjGallery setPagingEnabled:YES];

    
    
    ResponseArray =[[NSMutableArray alloc]init];
     
    for ( i=0; i<=12; i++) {
        [ResponseArray  addObject:[NSNumber numberWithInt:i] ];
    }
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)bttnActionMenu:(id)sender {
}
- (IBAction)bttnActionShare:(id)sender {
}



- (NSInteger)collectionView:(UICollectionView *)view numberOfItemsInSection:(NSInteger)section {
    
    return [ResponseArray count];
    
}

- (NSInteger)numberOfSectionsInCollectionView: (UICollectionView *)collectionView {
    
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)cv cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    [_collectionViewObjGallery setContentOffset:CGPointZero animated:YES];
    
    UICollectionViewCell *cell = (UICollectionViewCell*)[cv dequeueReusableCellWithReuseIdentifier:@"GalleryCell" forIndexPath:indexPath];
    
     UILabel *titleLabel = (UILabel *) [cell viewWithTag:lblObjCell];
    
    
          titleLabel.text = [NSString stringWithFormat:@"Image %d",[[ResponseArray objectAtIndex:indexPath.row] integerValue]];
    
    return cell;
    
}


- (UIEdgeInsets)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout*)collectionViewLayout insetForSectionAtIndex:(NSInteger)section {
    
    return UIEdgeInsetsMake(0, 10, 0, 10);
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    
   
    
}



- (IBAction)bttnActionSend:(id)sender {
    
    [self performSegueWithIdentifier:@"MoveToContact" sender:self];

}
@end
