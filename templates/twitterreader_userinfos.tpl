
<?php if (!$this->searchable): ?>
<!-- indexer::stop -->
<?php endif; ?>
<div class="<?php echo $this->class; ?> block"<?php echo $this->cssID; ?><?php if ($this->style): ?> style="<?php echo $this->style; ?>"<?php endif; ?>>
<?php if ($this->headline): ?>

<<?php echo $this->hl; ?>><?php echo $this->headline; ?></<?php echo $this->hl; ?>>
<?php endif; ?>


	<?php if ($this->TwitterData): ?>
	
<!-- UserInfos -->
		<ul>
			<li class="user_image">
				<img src="<?php echo $this->TwitterData[0]->user->profile_image_url; ?>" alt="<?php echo $this->TwitterData[0]->user->screen_name.""; ?>" />
			</li>
			<li class="user_screename">
				<?php echo $this->TwitterData[0]->user->screen_name.""; ?>
			</li>
			<li class="user_location">
				<?php echo $this->TwitterData[0]->user->location.""; ?>
			</li>
			<li class="user_description">
				<?php echo $this->TwitterData[0]->user->description.""; ?>
			</li>
			<li class="user_followerscount">
				<?php echo $this->TwitterData[0]->user->followers_count.""; ?>
			</li>
			<li class="user_friendscount">
				<?php echo $this->TwitterData[0]->user->friends_count.""; ?>
			</li>
		</ul>
		<ul>
		
<!-- postings -->
		
		<?php foreach ($this->TwitterData as $item): ?>
		 
			<li class="<?php echo $item->EvenOdd; ?> <?php echo $item->First; ?> <?php echo $item->Last; ?>">
			<span class="date"><?php echo date($GLOBALS['objPage']->dateFormat,strtotime($item->created_at)); ?></span>
			<?php echo $item->text; ?>
			</li>
		<?php endforeach; ?>
		</ul>
	<?php endif; ?>    

</div>
<?php if (!$this->searchable): ?>
<!-- indexer::continue -->
<?php endif; ?>
