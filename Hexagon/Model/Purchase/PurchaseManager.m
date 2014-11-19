//
//  PurchaseManager.m
//  Hexagon
//
//  Created by semler on 14-11-14.
//  Copyright (c) 2014年 semler. All rights reserved.
//

#import "PurchaseManager.h"
#import <StoreKit/StoreKit.h>

@interface PurchaseManager () <SKProductsRequestDelegate, SKPaymentTransactionObserver> {
    SKProduct *dungeonXPurchase;
    SKProductsRequest *myProductsRequest;
    NSString *price;
}

@property (nonatomic, retain) NSUserDefaults *userDefaults;
@property (nonatomic, retain) UIAlertView *purchaseAleartView;

@end

@implementation PurchaseManager

static PurchaseManager *purchaseManager = nil;

+ (PurchaseManager *)sharedManager{
    if (!purchaseManager) {
        purchaseManager = [[PurchaseManager alloc] init];
    }
    return purchaseManager;
}

- (id)init
{
    self = [super init];
    if (self) {
        self.userDefaults = [NSUserDefaults standardUserDefaults];
        //課金処理
        dungeonXPurchase = nil;
        NSSet *myProductIds = [NSSet setWithObject:@"dungeon_x"];
        myProductsRequest = [[SKProductsRequest alloc] initWithProductIdentifiers:myProductIds];
        myProductsRequest.delegate = self;
        [myProductsRequest start];
    }
    return self;
}

- (void) showAleart {
    self.purchaseAleartView = [[UIAlertView alloc] init];
    self.purchaseAleartView.delegate = self;
    self.purchaseAleartView.title = @"課金しますか？";
    self.purchaseAleartView.message = price;
    [self.purchaseAleartView addButtonWithTitle:@"はい"];
    [self.purchaseAleartView addButtonWithTitle:@"いいえ"];
    [self.purchaseAleartView show];
}

-(void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex {
    
    if(self.purchaseAleartView == alertView){
        switch (buttonIndex) {
            case 1:
                break;
            case 0:
                if([SKPaymentQueue canMakePayments] == NO){
                    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"購入できません" message:@"App内の購入は機能制限されています" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
                    [alert show];
                    return;
                }
                
                SKPayment *payment = [SKPayment paymentWithProduct:dungeonXPurchase];
                [[SKPaymentQueue defaultQueue] addPayment:payment];
                break;
        }
    }
}

- (void)productsRequest:(SKProductsRequest *)request didReceiveResponse:(SKProductsResponse *)response{
    if (response == nil){
        NSLog(@"didReceiveResponse response == nil");
        return;
    }
    
    for(NSString *identifier in response.invalidProductIdentifiers){
        NSLog(@"invalidProductIdentifiers: %@", identifier);
    }
    
    for(SKProduct *product in response.products){
        NSLog(@"Product: %@ %@ %@ %d", product.productIdentifier, product.localizedTitle, product.localizedDescription, [product.price intValue]);
        
        if([product.productIdentifier isEqualToString:@"dungeon_x"]){
            dungeonXPurchase = product;
            NSNumberFormatter *numberFormatter = [[NSNumberFormatter alloc] init];
            [numberFormatter setFormatterBehavior:NSNumberFormatterBehavior10_4];
            [numberFormatter setNumberStyle:NSNumberFormatterCurrencyStyle];
            [numberFormatter setLocale:dungeonXPurchase.priceLocale];
            price = [numberFormatter stringFromNumber:dungeonXPurchase.price];
        }
    }
    
    if(dungeonXPurchase == nil){
        NSLog(@"myProduct == nill!");
        return;
    }
    
}

- (void)paymentQueue:(SKPaymentQueue *)queue updatedTransactions:(NSArray *)transactions {
    for (SKPaymentTransaction *transaction in transactions) {
        if (transaction.transactionState == SKPaymentTransactionStatePurchasing) {
            // 購入処理中
        } else if (transaction.transactionState == SKPaymentTransactionStatePurchased) {
            // 購入処理成功
            if ([transaction.payment.productIdentifier isEqualToString:@"dungeon_x"]) {
                [self.userDefaults setBool:YES forKey:@"dungeon_x"];
                [self.userDefaults synchronize];
                // TODO
            }
            
            [queue finishTransaction:transaction];
        } else if (transaction.transactionState == SKPaymentTransactionStateFailed) {
            // 購入失敗
        } else {
            // リストア処理完了
            [queue finishTransaction:transaction];
        }
    }
}

//リストア処理
- (void) restore {
    [[SKPaymentQueue defaultQueue] restoreCompletedTransactions];
}

//リストア処理
- (void) paymentQueueRestoreCompletedTransactionsFinished:(SKPaymentQueue *)queue
{
    BOOL restore = NO;
    
    for (SKPaymentTransaction *transaction in queue.transactions) {
        // プロダクトIDが一致した場合
        if ([transaction.payment.productIdentifier isEqualToString:@"dungeon_x"]) {
            restore = YES;
            // *** ここに制限解除や広告削除などの課金後の命令を書く ***
            [self.userDefaults setBool:YES forKey:@"dungeon_x"];
            [self.userDefaults synchronize];
            
            break;
        }
    }
    
    // 一致するものがなかった場合
    if (restore == NO) {
        // 通常のアプリ内課金の実行など
    }
}

// リストアに失敗した場合
- (void) paymentQueue:(SKPaymentQueue *)queue restoreCompletedTransactionsFailedWithError:(NSError *)error {
    // 失敗した際の処理をここに
}






@end
