//
//  JRHotelCardView.m
//  AviasalesSDKTemplate
//
//  Created by Dim on 14.06.17.
//  Copyright © 2017 Go Travel Un Limited. All rights reserved.
//

#import "JRHotelCardView.h"

@interface JRHotelCardView ()

@property (weak, nonatomic) IBOutlet UIView *containerView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *subtitleLabel;
@property (weak, nonatomic) IBOutlet UIButton *actionButton;
@property (weak, nonatomic) IBOutlet UIButton *countryInfoButton;

@end

@implementation JRHotelCardView

- (void)awakeFromNib {
    [super awakeFromNib];

    [self setupView];
}

#pragma mark - Setup

- (void)setupView {

    self.backgroundColor = [JRColorScheme mainBackgroundColor];
    self.containerView.layer.cornerRadius = 6.0;

    [self setupLabels];
    [self setupButtons];
}

- (void)setupLabels {

    self.titleLabel.text = NSLS(@"JR_SEARCH_RESULTS_HOTEL_CARD_TITLE");
    self.titleLabel.textColor = [JRColorScheme darkTextColor];

    self.subtitleLabel.text = NSLS(@"JR_SEARCH_RESULTS_HOTEL_CARD_SUBTITLE");
    self.subtitleLabel.textColor = [JRColorScheme darkTextColor];
}

- (void)setupButtons {

    self.actionButton.layer.borderWidth = 1.0;
    self.actionButton.layer.cornerRadius = 4.0;
    self.actionButton.layer.borderColor = [JRColorScheme mainColor].CGColor;
    
    self.countryInfoButton.layer.borderWidth = 1.0;
    self.countryInfoButton.layer.cornerRadius = 4.0;
    self.countryInfoButton.layer.borderColor = [JRColorScheme mainColor].CGColor;

    [self.actionButton setTitle:NSLS(@"JR_SEARCH_RESULTS_HOTEL_CARD_BUTTON_TITLE") forState:UIControlStateNormal];
}

#pragma mark - Actions

- (IBAction)actionButtonTapped:(UIButton *)sender {

    if (self.buttonAction) {
        self.buttonAction();
    }
}
    
- (IBAction)onCityInfoTapped:(UIButton *)sender {
    if (self.countryInfoButtonAction) {
        self.countryInfoButtonAction();
    }
}

@end
