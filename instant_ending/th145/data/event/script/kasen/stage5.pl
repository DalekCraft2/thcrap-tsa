#========================================================================
#	�ؐ�X�g�[���[
#	�X�e�[�W5�@VS俎q
#	�ꏊ�F�O�̐��E
#	�X�e�[�W�^�C�g��
#	   �u���߂Čo�����閣�͓I�ȋ��|�v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/kasen.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#�t�F�C�X�摜
,DefineObject,kasen,-360,0,false
,DefineObject,usami,-360,0,true

,Return
# =========================================================

# �{��
# -------------------------------------------------------

# ********************************************
# ********************************************

:main_1

,GoSub,init				,# ���������[�`���Ăяo��

#�J�n�J�������o
,Function,GameStory_BeginCamera();
,Sleep,2,#�E�F�C�g����
,Function,"::act.fader.FadeIn(60, 0x00000000, null);"

,Function,"GameStory_PlayBGM(707);",# ��bBGM�Đ��J�n

#�������o�^
,DefineObject,kasen_label,50,360,false
,DefineObject,usami_label,1120,360,false

#�����\��ݒ�
,ImageDef,kasen,�ؐ�_��1,0,0
,ImageDef,usami,俎q_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"


,ImageDef,kasen,�ؐ�_�f1,0,0
,th145_Show,kasen,-1280	,

#,SetFocus,kasen
#���ς�炸\n�������͔��ɍ���Ȃ���\,a11x2,0,0
#,ClearBalloon,kasen
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_�{1,0,0
#��������邩�炳������\n�p�����ς܂���\,a11x2,0,0
#,ClearBalloon,kasen
#
#
## 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
#
#,ImageDef,kasen,�ؐ�_��1,0,0
#
#,SetFocus,kasen
#�N���H\n���������H\,a05x2,0,0
#,ClearBalloon,kasen
#
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_��1,0,0
#,th145_Show,usami,-1280	,�t�F�C�X�\���J�n
#��������\n���ɐl�Ԃ��ᖳ���z��\n�o�Ă�����ˁH\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_��1,0,0
#�������I\n�听������\,a05x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_�f1,0,0
#�O�̐��E�ɋ���ׂ�\n�z������Ȃ��\,a11x2,0,0
#,ClearBalloon,kasen
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_�]1,0,0
#�܁A���͓��ʂ�\,a11x2,0,0
#,ClearBalloon,usami
#
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_�{1,0,0
#������\n���O���I�J���g�{�[����\n�d���񂾒��{�l�Ȃ̂��H\,a15x3,0,0
#,ClearBalloon,kasen
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_�@1,0,0
#����ȕ��Ō��z���̌��E��\n�j�󂵂悤�Ƃ��Ă��Ȃ��\n�|�����m�炸��\\,a15x3,0,0
#,ClearBalloon,kasen
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_��1,0,0
#���΂ɂ����o�����̂�\n�ł����ʏ�X����\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_��1,0,0
#�\�ɏ]���ĒN�����{�[����\n���W�߂Ă�����\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_�]1,0,0
#�������̐��E�Ɏ��R��\n�s�����o��������o����\n���Ď蔤�ɂȂ��Ă��\,a15x3,0,0
#,ClearBalloon,usami
#
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_��1,0,0
#�c�c����Ȃ��Ƃ܂�\n�m���Ă���Ȃ�āc�c\n��̉��ҁH\,a15x3,0,0
#,ClearBalloon,kasen
#
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_��1,0,0
#���߂ď��߂܂���\n���͓��[�����Z��N�A�F����\R[俎q|���݂ꂱ]\n�����q���ق�{���̒��\�͎҂�\,a15x3,0,0
#,ClearBalloon,usami
#
##�Љ�J�b�g�\���@俎q�́u俎q_��1�v����̂ݎ��s�\\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_��1,0,0
#���������Đl�ԁc�c\n���ƁH\,a11x2,0,0
#,ClearBalloon,kasen
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_�f1,0,0
#�O�̐l�Ԃ����z���̌��E��\n�j�󂵂悤�Ƃ���Ȃ��\n�v���Ă��݂Ȃ�������\,a15x3,0,0
#,ClearBalloon,kasen
#
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_��1,0,0
#�ŋ߂̐l�Ԃ�\n�r�߂Ȃ������ǂ���\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_��1,0,0
#�l�b�g�Ō��������\n���ł��o�Ă���񂾂���\,a11x2,0,0
#,ClearBalloon,usami
#
#
#
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_��1,0,0
#����ɂ��Ă�\n����������ɓ�����\n�H�蒅���Ă��܂����悤��\,a15x3,0,0
#,ClearBalloon,kasen
#
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_��2,0,0
#���͕ʌ��ł�������\n�����񂾂��ǁc�c\,a11x2,0,0
#,ClearBalloon,kasen
#
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_��1,0,0
#���ł����猶�z���̊�@��\n�~���Ă����Ƃ��悤\,b15x3,0,0
#,ClearBalloon,kasen
#
#,Function,"StopBGM(2000);",# BGM��~
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_��1,0,0
#�����ƒm���Ă���H\n���z���̗d���̎�\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_��1,0,0
#���݂͂�ȉΗ͂ŉ�������̂��\,a15x3,0,0
#,ClearBalloon,usami
#
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_��1,0,0
#�ق�\n�����܂Œm���Ă��đނ��Ȃ��Ƃ�\,a15x3,0,0
#,ClearBalloon,kasen
#
#
#
,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_�]1,0,0
#����x��̌ÓT�I�ȗd����\n�W���m����ɓ��ꂽ����̐l�Ԃ�\n�G���Ǝv���āH\,a15x3,0,0
#,ClearBalloon,usami
#
#
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_��1,0,0
#�l�Ԃ͋����ɂȂ������񂾂�\,a15x3,0,0
#,ClearBalloon,kasen
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_��1,0,0
#�d���̓��̂̒m���\n���|��Y�ꂽ�̂�\,a11x2,0,0
#,ClearBalloon,kasen
#
#,SetFocus,kasen
#,ImageDef,kasen,�ؐ�_��1,0,0
#�]��Ⴢ��悤��\n��̈Â���Y�ꂽ�̂�\,c11x2,0,0
#,ClearBalloon,kasen
#
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_�]1,0,0
#�s�v�c�ȕ��ɋ���鎖�ȂǂȂ�\n����q�������ėd����\n�R���N�V�������鎞��Ȃ̂�\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_��1,0,0
#�l�Ԃ̉b�q����炦\n�����ā\�\\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,#�������L�������w��
#,ImageDef,usami,俎q_��1,0,0
#�������E�ŕ���������\n���������������I\,c11x2,0,0
#,ClearBalloon,usami













#���҃t�F�C�X�P��
,th145_Hide,kasen,-1280,&
,th145_Hide,usami,-1280,

,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End



# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,kasen,�ؐ�_��1,0,0
,ImageDef,usami,俎q_�f1,0,0

,th145_Show,kasen,-1280	,&,#�ؐ�t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�ؐ�t�F�C�X�\���J�n

,SetFocus,usami
����[�H\n�܂����͊J���Ȃ��H\,a11x2,0,0

,Function,"::StopBGM(1500);"
#�R���e�j���[�����ւ̃W�����v��\��@���݂͉��Ŏ��̃X�e�[�W�ɐi��ł����߂鏈�����s���A���X�e�[�W�̍ŏ�����ĊJ���܂�
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# ����
# -------------------------------------------------------
:win
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,kasen,�ؐ�_��1,0,0
,ImageDef,usami,俎q_��1,0,0

,th145_Show,kasen,-1280	,&,#�ؐ�t�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�ؐ�t�F�C�X�\���J�n

,SetFocus,usami
�{��\,a11x2,0,0
,ClearBalloon,usami

,Function,"::StopBGM(1500);"
,Thread,"::story.BeginOpening();"#�I�[�v�j���O�J�n

,End

# -------------------------------------------------------
# �T�u���[�`��
# -------------------------------------------------------
:TestMessage
�T�u���[�`�����s\
,ClearBalloon
,Return
