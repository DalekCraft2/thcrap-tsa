#========================================================================
#	�j���ۃX�g�[���[
#	�X�e�[�W5�@VS俎q
#	�ꏊ�F�O�̐��E
#	�X�e�[�W�^�C�g��
#	   �u�{���̋��|�̍��v
#
#========================================================================
:init
,SetDefaultBalloon,0,#���b�Z�[�W�ɕ��o���w������Ȃ��ꍇ�̃f�t�H���g���o����ݒ�

#�t�F�C�X�摜�Q�Ƃ̒�`
,LoadImageDef,"data/event/pic/sinmyoumaru.csv"
,LoadImageDef,"data/event/pic/usami.csv"

#�t�F�C�X�摜
,DefineObject,sinmyoumaru,-360,0,false
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
,DefineObject,sinmyoumaru_label,50,360,false
,DefineObject,usami_label,1120,360,false

#�����\��ݒ�
,ImageDef,sinmyoumaru,�j����_��1,0,0
,ImageDef,usami,俎q_��1,0,0


#X�t���[���̑ҋ@�����isleep�ƈقȂ�X�L�b�v����Ŕ�΂��Ȃ��j
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"

#�^�C�g���R�[���o��
#,Function,GameStory_TitleCall();
#,Function,"function main(){ for (local i=0; i < 150; i++) suspend(); }"
#
#
#,ImageDef,sinmyoumaru,�j����_��1,0,0
#,th145_Show,sinmyoumaru,-1280	,
#
#,SetFocus,sinmyoumaru		,
#�������[\,a05x2,0,0
#,ClearBalloon,sinmyoumaru
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,�j����_��1,0,0
#���̌���P����͈��\,a11x2,0,0
#,ClearBalloon,sinmyoumaru
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,�j����_�{1,0,0
#�����͂���������\n�`���ɕ���\R[�Ȋw�̍�|���s���[�^]���[�H\,a11x2,0,0
#,ClearBalloon,sinmyoumaru
#
## 2P�L�����X�e�[�W������o��
,Function,GameStory_2P_In_Side(),
,Function,"function main(){ for (local i=0; i < 60; i++) suspend(); }"
#
#,ImageDef,usami,俎q_��1,0,0
#,th145_Show,usami,-1280,
#
#,SetFocus,usami		,
#��[\,a05x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#���[�킢���[�I\n���o�ɏ���Ă���́H\,a11x2,0,0
#,ClearBalloon,usami
#
##�Љ�J�b�g�\���@俎q�́u俎q_��1�v����̂ݎ��s�\\,a11x2,0,0
#,th145_CharName_Cutin,usami
#,Function,"function main(){ for (local i=0; i < 30; i++) suspend(); }"
#
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�ꐡ�@�t�݂����[�I\n�ꐡ�i���j���͑傫������\n�i���R�Z���`������Ɓj\,a15x3,0,0
#,ClearBalloon,usami
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,�j����_��1,0,0
#�ނނ�\n�Ȋw�҂Ȃ̂��[�H\,a11x2,0,0
#,ClearBalloon,sinmyoumaru
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,�j����_�{1,0,0
#�����ǂ�������肾�[\,a11x2,0,0
#,ClearBalloon,sinmyoumaru
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�y�b�g�ɂ��悤����\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_�]1,0,0
#����ȏ������l�Ԃ�\n����Ȃ�ăX�e�L�[\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,usami		,
#,ImageDef,usami,俎q_��1,0,0
#�����������݂�����\n���_�[������[�I\,a11x2,0,0
#,ClearBalloon,usami
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,�j����_��1,0,0
#�Ђ��[\,a05x2,0,0
#,ClearBalloon,sinmyoumaru
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,�j����_�{1,0,0
#���s���[�^�̐l�̎�����\n�l���Ɍ����Ƃ���\,a11x2,0,0
#,ClearBalloon,sinmyoumaru
#
#,SetFocus,sinmyoumaru		,
#,ImageDef,sinmyoumaru,�j����_��1,0,0
#�傫���Ȃ�O�ɂ���ȏ���\n�߂܂��Ă��܂邩�[�I\,a15x3,0,0
#,ClearBalloon,sinmyoumaru
#
#,Function,"StopBGM(500);",# BGM��~
#,Function,"GameStory_PlayBattleBGM(511);",# �퓬BGM�Đ��J�n

#���҃t�F�C�X�P��
,th145_Hide,sinmyoumaru,-1280,&
,th145_Hide,usami,-1280,


,Function,"RoundStory_Ready();",# TODO::�ΐ�J�n����

,End


# -------------------------------------------------------
# �s�k��
# -------------------------------------------------------
:lose
,GoSub,init				,# ���������[�`���Ăяo��

#�����\��ݒ�
,ImageDef,sinmyoumaru,�j����_��1,0,0
,ImageDef,usami,俎q_�]1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#�j���ۃt�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�j���ۃt�F�C�X�\���J�n

,SetFocus,usami
�a�͉����낤�H\n�L�ʂŗǂ��̂���\,a11x2,0,0

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
,ImageDef,sinmyoumaru,�j����_��1,0,0
,ImageDef,usami,俎q_��1,0,0

,th145_Show,sinmyoumaru,-1280	,&,#�j���ۃt�F�C�X�\���J�n
,th145_Show,usami,-1280	,#�j���ۃt�F�C�X�\���J�n

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
